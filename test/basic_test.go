package test

import (
    "testing"
    "github.com/gruntwork-io/terratest/modules/terraform"
    "github.com/stretchr/testify/assert"
)

func TestTerraformPlanOnly(t *testing.T) {
    terraformOptions := &terraform.Options{
        TerraformDir: "../", // path to your Terraform code
        Vars: map[string]interface{}{
            // Add required variables with dummy values, if any
            //"region": "us-east-1",
            // ...other required vars
        },
        PlanFilePath: "tfplan.binary", // optional
    }

    // Only run Init and Plan
    _, err := terraform.InitAndPlanE(t, terraformOptions)
    assert.NoError(t, err)

    // Optionally, you can parse the plan output for more checks
    // plan := terraform.Show(t, terraformOptions)
    // assert.Contains(t, plan, "some resource name")
}