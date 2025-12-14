# Activation Function

## Overview
- A mathematical function applied to a neuron's output that determines:
    - Whether the neuron should activate
    - How strongly it should pass its signal to the next layer
- It takes a neuron;s linear output and transforms it into a non-linear signal

## Notes
- Each neuron operates in two stages:
    - Linear computation:
        - Combines inputrs using weights and a bias
        - Produces a value often called the pre-activation(z)
    - Activation
        - Applies an activation function to z
        - Produces the neuron's final output(A)

- Common Activation Functions
    - Sigmoid
        - Output range: (0, 1)
        - Used for probabilites and binary classification
    - ReLU
        - Output range: [0, infinity]
        - Fast and commonly used in hidden layers
    - Tanh
        - Output range (-1,1)
        - Zero-centered, sometimes preferred over sigmoid