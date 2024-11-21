### 2.3.1	Absorption

There is no absorption process since BAY 79-4620 was administered intravenously.

### 2.3.2	Distribution

The standard lymph and fluid recirculation flow rates and the standard vascular properties of the different tissues (hydraulic conductivity, pore radii, fraction of flow via large pores) from PK-Sim were used. BAY 79-4620, among other compounds, has been used to identify these lymph and fluid recirculation flow rates used in PK-Sim ([Niederalt 2018](#5-references)).  

A standard PK-Sim model was used without an additional tumor organ - in contrast to the model which has been used in Ref. ([Niederalt 2018](#5-references)).  It was assumed that BAY 79-4620 is not cross-reactive to murine CA IX, i.e. there is no drug-target binding due to the neglect of tumor tissue in the present PK-Sim standard model (again in contrast to the model used in Ref. ([Niederalt 2018](#5-references))).   

### 2.3.3	Metabolism and Elimination

The FcRn mediated clearance present in the standard PK-Sim model was  used as only clearance process (in contrast to the model used in Ref. ([Niederalt 2018](#5-references)), where there is an additional target mediated clearance process in tumor tissue). The affinity to FcRn in the endosomal space was fitted to the PK data. The same value as fitted in Ref. ([Niederalt 2018](#5-references)) was used since the contribution from  target mediated clearance was small.   

### 2.3.4	Tissue Concentrations

For the comparison with experimental data the parameters `Fraction of blood for sampling` used in the Observer for the tissue concentrations were set for all organs to 0.18 for comparison with tissue dissection data and to 0.42 for comparison with autoradiography data according to the fit results (across compounds) in Ref. ([Niederalt 2018](#5-references)). (The parameter `Fraction of blood for sampling` specifies residual blood in tissue as ratio of blood volume contributing to the measured tissue concentration to the total in vivo capillary blood volume.)

In the present evaluation report, the experimental intestine concentrations from the tissue dissection study were compared to simulated organ concentrations for small and large intestine separately in the goodness of fit plots as well as in the concentration-time profile plot. 

   

### 2.3.5	Automated Parameter Identification

The table shows the parameter values that were specified in the model based on the parameter identification reported in Ref. ([Niederalt 2018](#5-references)), and which were not included in the PK-Sim database since version 7.1.

| Model Parameter                                              | Optimized Value | Unit   |
| ------------------------------------------------------------ | --------------- | ------ |
| `Kd(FcRn) in endosomal space`                                | 12.7            | µmol/L |
| `Fraction of blood for sampling` (all organs) - for comparison with tissue dissection data | 0.18            |        |
| `Fraction of blood for sampling` (all organs) - for comparison with autoradiography data | 0.42            |        |

