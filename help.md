**How to use the tool to solve a two-variable linear programming problem?**

This visual tool aims to provide a graphical approach to a two-variable linear programming problem. It plots the ranges of the two variables, the constraints, and the (desired) objective function value so you can see how they all play together.

**The problem**

Let's assume that a winemaker in Barrossa Valley (South Australia) must decide how much of two types of wine she will produce from a particular variety of grapes. Each liter of wine will yield some profit, which you can specify as inputs. The labor hours and bottling process time used, in terms of hours, for table wine are 0.2 and 0.3, and for desert wine are 0.6 and 0.1. Resources available include labor hours and bottling process time, which can be dynamically changed in the model. Assume the winemaker has more than enough grapes available to supply any feasible production plan. We also limit the units for table wine to be maximum 1,200, and desert wine to be 800, just to facilitate the graphical presentation.

**How to operate**

The graphical interface is relatively intuitive. All the inputs are controlled on the left hand side. You can specify the profit per unit for both table and desert wines (in the text boxes), and specify the resources available for labor and bottling process (via the sliders). The profit desired slider gives you an option to see whether your guess is reasonable and see how it interacts with the constraints.

**The Source Files**
The source files of this Shiny application (ur.R and server.R) can be found at https://github.com/mryongwu/DevelopDataProducts
