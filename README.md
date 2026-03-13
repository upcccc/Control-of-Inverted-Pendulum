# Control of Inverted Pendulum

Control of an inverted pendulum (cart-pole system) using modern control theory, implemented in MATLAB and Simulink.

## Program Components

### `Control of Inverted Pendulum.mlx`
A MATLAB Live Script that serves as the main entry point for the project. It derives the system's state-space model, designs the state-feedback controller (e.g., pole placement or LQR), designs the state observer (Luenberger observer), and presents the simulation results with plots.

### `cartpole_with_obsever.slx`
A Simulink model of the cart-pole system. It implements the closed-loop control system including:
- The nonlinear/linear plant dynamics of the cart and pendulum.
- A state-feedback controller that stabilizes the pendulum in the upright position.
- A full-order state observer that estimates the system states from the available outputs.

### `system_new.m`
A MATLAB helper function that runs the Simulink simulation with a specified set of initial conditions. It sets the initial states for all integrator blocks in the Simulink model, runs the simulation, and returns the following time-series data:
- `x1` – cart position (actual)
- `x3` – pendulum angle (actual)
- `x1_obs` – cart position (observer estimate)
- `x3_obs` – pendulum angle (observer estimate)
- `time` – simulation time vector

## Requirements

- MATLAB (with Control System Toolbox)
- Simulink

## Usage

Open and run `Control of Inverted Pendulum.mlx` in MATLAB to reproduce the system design and simulation results.
