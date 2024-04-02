package ProteinOcean;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

public class ProteinOceanTestRunner {
    @Test
    public void main() {
        Results results = Runner.path("classpath:ProteinOcean/ProteinOcean.feature").tags("~@page").parallel(1);
        String reportDir = results.getReportDir();
        System.out.println("Test raporu kaydedildi: " + reportDir);
    }
}
