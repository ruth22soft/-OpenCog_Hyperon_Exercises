OpenCog Hyperon Exercises
This repository contains implementations of data structures and operations based on Exercises 1 and 2 from the "Introduction to OpenCog Hyperon" slides by Tollan Sitotaw. It leverages the MeTTa language to demonstrate key concepts in artificial general intelligence (AGI) and functional programming.
Overview

Exercise 1: Defines a binary tree data structure in MeTTa, including Empty and Node constructors, with examples for constructing and manipulating trees.
Exercise 2: Implements a suite of list operations in MeTTa, such as length, is-member, append, max-value, min-value, push, pop, remove-element, remove-duplicate, map, filter, foldl, foldr, reverse, and sort, showcasing recursive and pattern-matching techniques.

Getting Started
Prerequisites

MeTTa interpreter (install via your preferred method, e.g., from the OpenCog Hyperon documentation)

Installation

Clone the repository:
git clone https://github.com/ruth22soft/OpenCog-Hyperon-Exercises.git
cd OpenCog-Hyperon-Exercises


Ensure the MeTTa interpreter is available in your PATH.


Usage

Open the exercises.metta file in a text editor or MeTTa environment.
Run individual functions to test the binary tree or list operations. For example:
Binary Tree: (Node 3 (Node 1 Empty Empty) (Node 4 Empty Empty))
List Operations: !(length (Cons 1 (Cons 2 Nil))) returns 2



Files

exercises.metta: Contains the MeTTa code for Exercises 1 and 2.
README.md: This file, providing setup and usage instructions.

Contributing
Feel free to fork this repository, submit pull requests, or open issues for enhancements or bug fixes.
License
This project is licensed under the MIT License - see the LICENSE file for details.
Acknowledgments

Inspired by the "Introduction to OpenCog Hyperon" slides by Tollan Sitotaw.
Built using the OpenCog Hyperon framework's MeTTa language.
