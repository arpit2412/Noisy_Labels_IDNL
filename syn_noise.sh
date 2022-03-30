#!/bin/bash


for dataset in CIFAR10 
do
    for seed in 1 
    do
        for z_dim in 25
        do

            for rate in 0.5 
            do
                python3 main.py --flip_rate_fixed ${rate} --seed ${seed} --z_dim ${z_dim} --dataset ${dataset} > ${dataset}_flip_rate${rate}_seed${seed}_z_dim${z_dim}.out
            done

        done
    done
done

