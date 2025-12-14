# Sigmoid Function

## Overview
- The sigmoid function is a mathematical function that takes any real number input and maps it to a value between 0 and 1.

## Formula
![Sigmoid function](./docs/sigmoid_fun.png)

Where:
- 'x' = input value
- 'e' = Euler's number (= 2.718)

## Notes
- It is often used when you want your output to represent a probability, because probabilities are between 0 and 1.
- Think of sigmoind as a squashing function:
    - It compresses any real number into the range[0, 1]
    - Negative numbers -> near 0
    - Positive numbers -> near 1
    - zero -> 0.5

## Why we use it in Neural Networks
- Activation Function
    - Neural networks are made of layers of neurons
    - To decide the neuron's "output signal," we need a non-linear function - this is where sigmoind comes in.
    - Without non-linear activation, stacking multiple layers would be useless, because the network would just compute a linear function of inputs

- Squashes values between 0 and 1
    - Sigmoind converts any input x into an number between 0 and 1.
    - This is useful for:
        - **Binary Classification** (output can represent probability)
        - Normalizing neuron outputs to a consistent scale
    - Outputs near 0 or 1 can represent "inactive" vs "active" neurons.

- Differentiable
    - Neural networks learn by backpropagation, which requires taking derivatives.
    - The sigmoid function is smooth differentiable, making it suitable for gradient-based optimization
    - It's derivative is also simple to compute: 
        - σ′(x)=σ(x)⋅(1−σ(x))
        