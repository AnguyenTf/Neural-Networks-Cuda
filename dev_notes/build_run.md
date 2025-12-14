## Build Instructions
cd ~/projects/cuda/build && cmake .. && make -j$(nproc) && ./app

## Commit
Check what changed
git status

Stage changes for commit
git add .

Commit with a message
git commit -m "Update README and initial setup"

git push origin main

## Clone 

cd ~/projects    # or wherever you want
git clone git@github.com:AnguyenTf/Neural-Networks-Cuda.git

## Format
- "#": Document title
- "##": Main sections (Overview, Fomula, Notes, Why we use)
- "###": Subsections or bullet explanations

## Notes
- Cuda programs that can run on the gpu are called kernals


## Markdown format for dev_notes

# [Topic Name]  ← Level-1 heading for the file or main topic

## Overview
- Short description of the topic, its purpose, and relevance.
- Keep it 1–3 sentences.

## Syntax / Signature
- Show the function/class signature or key syntax.
- Use a **code block** for clarity:

```cpp
// Example syntax
cudaError_t cudaMalloc(void** devPtr, size_t size);
