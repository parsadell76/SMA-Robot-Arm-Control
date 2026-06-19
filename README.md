# SMA-Robot-Arm-Control
Dynamic modeling and control of an SMA arm. Originally a top-graded academic project, now serving as a baseline for novel AI-driven control research.
# Control of an SMA-Actuated Robotic Arm in Simulink

**Author:** Parsa Akabari

## 📖 Overview
This repository contains a comprehensive MATLAB/Simulink implementation of the dynamic model and various control strategies for a single-degree-of-freedom rotary manipulator actuated by a Shape Memory Alloy (SMA) wire. 

The plant model (thermomechanical and structural dynamics) is developed based on the benchmark paper:
> **"Application of the extended Kalman filter to control of a shape memory alloy arm"**  
> *Mohammad H Elahinia and Mehdi Ahmadian* | Smart Materials and Structures, Vol. 15, 2006.  
> [DOI: 10.1088/0964-1726/15/5/023](https://iopscience.iop.org/article/10.1088/0964-1726/15/5/023)

## 🌟 Background & Future Work
This repository originated as an academic course project focused on the highly non-linear dynamic modeling of an SMA actuator, which successfully received a full score. Following the initial modeling, the scope was expanded by designing and implementing various control strategies.

Currently, this robust dynamic model and its corresponding controllers serve as the foundation for upcoming research. The ultimate goal is to combine these foundational models with Artificial Intelligence (AI). By utilizing this plant to train and evaluate AI models for engineering applications—such as exploring Physics-Informed Neural Networks (PiNN) or advanced machine learning control algorithms—this project will form the basis of a novel research paper.

## 🚀 Scope & Contributions
**Please note:** The Extended Kalman Filter (EKF) state estimation proposed in the original paper has **not** been implemented in this project. 

Instead, this repository extends the foundational work by implementing and evaluating **multiple control architectures** directly on the non-linear SMA plant. 
The project includes:
1. **Accurate Plant Modeling:** Full implementation of the highly non-linear phase transformation and thermomechanical equations of the SMA wire.
2. **Controller Implementation:** Various control schemes designed to handle the hysteresis and non-linearities of the actuator.

## 🛠️ Implemented Controllers
*(Note: Please update this section with the exact names of your controllers)*
* **Controller 1 (e.g., Classical PID):** Used as a baseline for performance evaluation.
* **Controller 2 (e.g., Sliding Mode Control):** Implemented to ensure robustness against parameter uncertainties.
* **Controller 3 (if applicable):** [Brief description of another controller]

## ✨ Features
* Implementation of the highly non-linear thermomechanical behavior of the SMA wire.
* Dynamic equations of motion for the rotary manipulator.
* Closed-loop simulation files with easily switchable controller blocks.
* Detailed observation of SMA wire states (stress, temperature, martensite fraction) and arm angular position.
* Ready for testing new advanced AI-based control algorithms.

## 💻 How to Run
1. Clone this repository to your local machine.
2. Open MATLAB and navigate to the project directory.
3. Run the main Simulink model: 
4. Run the initialization script  to load parameters before running the simulation.
