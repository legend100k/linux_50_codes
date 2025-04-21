#!/bin/bash
# Program 21: Fast Fourier Transform (FFT) Implementation
perform_fft() {
    local -n data=$1
    local n=${#data[@]}
    
    if [ $n -le 1 ]; then
        return
    fi
    
    local -a even=()
    local -a odd=()
    
    for (( i=0; i<n; i+=2 )); do
        even+=("${data[$i]}")
    done
    
    for (( i=1; i<n; i+=2 )); do
        odd+=("${data[$i]}")
    done
    
    perform_fft even
    perform_fft odd
    
    for (( k=0; k<n/2; k++ )); do
        angle=$(echo "scale=10; -2 * 3.14159265359 * $k / $n" | bc -l)
        re_w=$(echo "scale=10; c($angle)" | bc -l)
        im_w=$(echo "scale=10; s($angle)" | bc -l)
        
        even_k_re=${even[$k]%+*i}
        even_k_im=${even[$k]#*+}
        even_k_im=${even_k_im%i}
        
        odd_k_re=${odd[$k]%+*i}
        odd_k_im=${odd[$k]#*+}
        odd_k_im=${odd_k_im%i}
        
        t_re=$(echo "scale=10; $re_w * $odd_k_re - $im_w * $odd_k_im" | bc -l)
        t_im=$(echo "scale=10; $re_w * $odd_k_im + $im_w * $odd_k_re" | bc -l)
        
        data[$k]=$(echo "scale=10; $even_k_re + $t_re" | bc -l)"+$(echo "scale=10; $even_k_im + $t_im" | bc -l)i"
        data[$((k+n/2))]=$(echo "scale=10; $even_k_re - $t_re" | bc -l)"+$(echo "scale=10; $even_k_im - $t_im" | bc -l)i"
    done
}

echo "Enter space-separated numbers for FFT:"
read -a signal
for (( i=0; i<${#signal[@]}; i++ )); do
    signal[$i]="${signal[$i]}+0i"
done

perform_fft signal
echo "FFT Result:"
for (( i=0; i<${#signal[@]}; i++ )); do
    echo "X[$i] = ${signal[$i]}"
done

