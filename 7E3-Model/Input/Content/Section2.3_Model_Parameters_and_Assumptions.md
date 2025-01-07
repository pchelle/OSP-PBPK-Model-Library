### Absorption <a id="model-parameters-and-assumptions-absorption"></a>

There is no absorption process since 7E3 was administered intravenously.

### Distribution <a id="model-parameters-and-assumptions-distribution"></a>

The standard lymph and fluid recirculation flow rates and the standard vascular properties of the different tissues (hydraulic conductivity, pore radii, fraction of flow via large pores) from PK-Sim were used. The antibody 7E3, among other compounds, has been used to identify these lymph and fluid recirculation flow rates used in PK-Sim ([Niederalt 2018](#5-references)).

### Metabolism and Elimination <a id="model-parameters-and-assumptions-metabolism-and-elimination"></a>

The FcRn mediated clearance present in the standard PK-Sim model was  used as only clearance process. The standard physiological parameters related to FcRn mediated clearance were used (rate constants for endosomal uptake and recycling, association rate constant for FcRn binding and concentration of FcRn in the endosomal space). For the FcRn knockout mice, the FcRn concentration was set to 0. The antibody 7E3, among other compounds, has been used to identify these parameters using literature values for the drug affinities to FcRn in the endosomal space ([Niederalt 2018](#5-references)).

### Tissue Concentrations <a id="model-parameters-and-assumptions-tissue-concentrations"></a>

For the comparison with experimental data, the parameters `Fraction of blood for sampling` used in the Observer for the tissue concentrations were set for all organs except brain to 0.18 for comparison with tissue dissection data according to the fit results (across compounds) in Ref. ([Niederalt 2018](#5-references)). Since the experimental brain concentrations of 7E3 were corrected for residual blood ([Garg 2009](#5-references)), no residual blood was assumed for brain. (The parameter `Fraction of blood for sampling` specifies residual blood in tissue as ratio of blood volume contributing to the measured tissue concentration to the total in vivo capillary blood volume.)
In the present evaluation report, the experimental gut concentrations were compared to simulated organ concentrations for small and large intestine separately in the goodness of fit plots as well as in the concentration-time profile plot. 

### Automated Parameter Identification <a id="model-parameters-and-assumptions-parameter-identification"></a>

No drug specific parameters were fitted. The antibody 7E3, among other compounds, has been used to develop the model for proteins and large molecules in PK-Sim ([Niederalt 2018](#5-references)).

The table shows the tissue observer parameter that was specified in the model based on the parameter identification reported in Ref. ([Niederalt 2018](#5-references)), and which was not included in the PK-Sim database since version 7.1.

| Model Parameter                                              | Optimized Value | Unit |
| ------------------------------------------------------------ | --------------- | ---- |
| `Fraction of blood for sampling` (all organs) - for comparison with tissue dissection data. | 0.18            |      |





