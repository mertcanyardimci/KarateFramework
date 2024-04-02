package ProteinOcean;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

public class ProteinOceanTestRunner {
    public static void main(String[] args) {
        Results results = Runner.path("classpath:ProteinOcean/ProteinOcean.feature").tags("~@page").parallel(1);
        String reportDir = results.getReportDir();
        System.out.println("Test raporu kaydedildi: " + reportDir);
    }
}
