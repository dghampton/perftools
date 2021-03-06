wrk.method = "POST"
wrk.headers["Content-Type"] = "application/json"
wrk.headers["Accept"] = "application/vnd.com.myhomepay.api.ste.tax-calculation+json;version=1"
wrk.headers["Authorization"] = "apikey H7vm54iqoM7vQeSfykifEGxTgh6DHFcLarVKsHHpxFknq"
wrk.headers["Host"] = "api.staging.mhp-ext.com"
wrk.body   = [[{
    "locationCode":"18-097-452890",
    "payrollSetup": {
      "payDate": "2017-03-28",
      "payPeriodsPerYear": 52,
      "payPeriodNumber": 1,
      "regularWagesCalculationMethod": "STE_CALC_METHOD_ANNUALIZED",
      "supplementalWagesCalculationMethod": "STE_CALC_METHOD_NONE"
    },
    "wages" : [
      { 
        "locationCode": "00-000-000000",
        "wageType": "STE_WAGE_REGULAR",
        "hours": 40,
        "wagesForPeriod": 1000,
        "ctdMonthly": 0,
        "ctdQuarterly": 0,
        "ctdYearly": 0
      },
      { 
        "locationCode": "18-097-452890",
        "wageType": "STE_WAGE_REGULAR",
        "hours": 40,
        "wagesForPeriod": 1000,
        "ctdMonthly": 0,
        "ctdQuarterly": 0,
        "ctdYearly": 0
      }
    ],
    "federalParameters": {
      "exemptStatus": false,
      "filingStatus": "STE_FED_SINGLE",
      "allowances": 0,
      "roundOption": false,
      "additionalWithholding": 0,
      "yearToDateWithholding": 0,
      "mostRecentWithholding": 0,
      "ficaExemptStatusEmployee": false,
      "ficaExemptStatusEmployer": false,
      "ficaYearToDateEmployee": 0,
      "ficaYearToDateEmployer": 0,
      "ficaAutoAdjust": false,
      "medicareExemptStatus": false,
      "medicareYearToDate": 0,
      "eICFilingStatus": "STE_EIC_NONE",
      "eICYearToDate": 0,
      "eICFilingJointly": false,
      "futaRate": 0.006,
      "futaIsExempt": false
    },
    "stateParameters": {
      "stateLocationCode": "18-000-000000",
      "isResidentFlag": true,
      "exemptFlag": false,
      "roundingOptions": "STE_STATE_DEFAULTROUNDING",
      "additionalWithholding": 0,
      "yearToDate": 0,
      "mostRecentWithholding": 0,
      "hasNonResCertificate": false,
      "disabilityInsuranceWithheldPerviously": 0,
      "disabilityAmountWithheldThisPeriod": 0,
      "disabilityOverrideRate": 0,
      "disabilityOverrideWageBase": 0,
      "disabilityIsExempt": false,
      "unemploymentInsuranceWithheldPreviously": 0,
      "unemploymentInsuranceOverrideRate": 0,
      "unemploymentInsuranceOverrideWageBase": 0,
      "unemploymentInsuranceIsExempt": false,
      "sutaRate": .027,
      "sutaIsExempt": false,
      "sutaSurchargeTaxId": "",
      "sutaSurchargeRate": 0.0,
      "sutaSurchargeIsExempt": true,
      "sdiEmployerTaxId": "",
      "sdiEmployerRate": 0.0,
      "sdiEmployerOverrideWageBase": 0.0,
      "sdiEmployerTaxYearToDate": 0.0,
      "sdiEmployerIsExempt": true,
      "sdiEmployerOptionType": "",
      "sdiEmployerOptionValue": "",
      "allowances": [
        { "allowance":"REGULARALLOWANCES", "allowanceValue":0 },
        { "allowance":"ADDITIONALALLOWANCES", "allowanceValue":1 }
      ]
    },
    "localParameters": {
      "countyIsExempt": false,
      "countyIsResident": true,
      "cityIsExempt": false,
      "cityIsResident": true,
      "cityExemptions": 0,
      "cityPeriodWithheldAmount": 0,
      "schoolDistrictMunicipalCode": "",
      "schoolDistrictCode": "",
      "schoolDistrictIsExempt": false,
      "schoolDistrictIsResident": true,
      "fliWithheldPreviously": 0,
      "fliOverrideRate": 0,
      "fliOverrideWageBase": 0,
      "fliIsExempt": true,
      "uhiWagesTaxedYearToDate": 0,
      "uhiOverrideRate": 0,
      "uhiOverrideWageBase": 0,
      "uhiAverageNumberOfEmployees": 1, 
      "uhiIsExempt": true,
      "emacWagesTaxedYearToDate": 0,
      "emacOverrideRate": 0,
      "emacOverrideWageBase": 0,
      "emacIsExempt": true
    }
}]]
