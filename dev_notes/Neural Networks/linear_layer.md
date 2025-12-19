# One Neural Network Layer (Fully Connected + Activation)

## Definitions

### `weight_matrix`
- Each weight tells a neuron how important an input is  
- Small weight → input matters a little  
- Large weight → input matters a lot  
- Negative weight → input counts against the neuron  
- Shape: [nr_output_neurons][nr_input_neurons]

---

### `biases`
- One bias per neuron  
- Shifts the neuron’s activation threshold  
- Allows the neuron to activate even when inputs are small or zero  

---

### `x_inputs`
- Input vector to this layer  
- Usually activations from the previous layer (or raw data for the first layer)  
- Length:

nr_input_neurons

---

### `z_values`
- Raw score computed by each neuron before activation  
- Formula:

z_j = dot(weights_j, x_inputs) + bias_j

---

### `activation_values`
- Final output of each neuron after applying the activation function  
- Formula:

a_j = activation(z_j)

- This vector is the **output of the layer**

---

### `nr_input_neurons`
- Number of input values coming into this layer  
- How many values **each neuron reads**

---

### `nr_output_neurons`
- Number of neurons in this layer  
- How many outputs this layer produces

---

## Example

### Inputs
```text
x_inputs = [1, 2, 3]
nr_input_neurons  = 3
nr_output_neurons = 4
biases = [0.1, -0.2, 0.5, 0.0]

Meaning

    Each neuron reads 3 inputs

    There are 4 neurons in this layer

    The layer outputs 4 activation values

Weights (one row per neuron)

Neuron 0: [ 0.5, -1.0,  2.0 ]
Neuron 1: [ 1.0,  0.0, -0.5 ]
Neuron 2: [ -1.0,  2.0,  1.0 ]
Neuron 3: [ 0.2,  0.3,  0.4 ]

Z-Value Computation

z_0 = (0.5 * 1) + (-1 * 2) + (2 * 3) + 0.1   =  4.6
z_1 = (1 * 1) + (0 * 2) + (-0.5 * 3) - 0.2  = -0.7
z_2 = (-1 * 1) + (2 * 2) + (1 * 3) + 0.5   =  6.5
z_3 = (0.2 * 1) + (0.3 * 2) + (0.4 * 3)     =  2.0

z_values = [4.6, -0.7, 6.5, 2.0]

Activation (Sigmoid) 
Sigmoid Function

a_j = 1 / (1 + e^(-z_j))

Results

a_0 ≈ 0.99
a_1 ≈ 0.33
a_2 ≈ 0.9985
a_3 ≈ 0.88

activation_values = [0.99, 0.33, 0.9985, 0.88]


