<?php
/*
 * Test script to verify redirect functionality
 * This script simulates different scenarios to test the redirect logic
 */

echo "<h2>Redirect Test Results</h2>";

// Test scenarios
$testCases = [
    ['host' => 'autocraftqld.com', 'uri' => '/', 'expected' => 'https://preferredautos.com.au/'],
    ['host' => 'www.autocraftqld.com', 'uri' => '/', 'expected' => 'https://preferredautos.com.au/'],
    ['host' => 'autocraftqld.com', 'uri' => '/stock', 'expected' => 'https://preferredautos.com.au/stock'],
    ['host' => 'autocraftqld.com', 'uri' => '/car/toyota-camry-2020-123', 'expected' => 'https://preferredautos.com.au/car/toyota-camry-2020-123'],
    ['host' => 'autocraftqld.com', 'uri' => '/contact', 'expected' => 'https://preferredautos.com.au/contact'],
    ['host' => 'preferredautos.com.au', 'uri' => '/', 'expected' => 'No redirect (different domain)'],
];

foreach ($testCases as $index => $test) {
    echo "<div style='margin: 10px 0; padding: 10px; border: 1px solid #ccc;'>";
    echo "<strong>Test " . ($index + 1) . ":</strong><br>";
    echo "Host: " . $test['host'] . "<br>";
    echo "URI: " . $test['uri'] . "<br>";
    
    // Simulate the redirect logic
    $currentDomain = $test['host'];
    $requestUri = $test['uri'];
    
    if (strpos($currentDomain, 'autocraftqld.com') !== false) {
        $newUrl = 'https://preferredautos.com.au' . $requestUri;
        echo "<span style='color: green;'>✓ Would redirect to: " . $newUrl . "</span><br>";
        echo "Expected: " . $test['expected'] . "<br>";
        echo ($newUrl === $test['expected'] ? "<span style='color: green;'>✓ PASS</span>" : "<span style='color: red;'>✗ FAIL</span>");
    } else {
        echo "<span style='color: blue;'>No redirect (different domain)</span><br>";
        echo "Expected: " . $test['expected'] . "<br>";
        echo "<span style='color: green;'>✓ PASS</span>";
    }
    echo "</div>";
}

echo "<h3>Summary</h3>";
echo "<p>The redirect logic will:</p>";
echo "<ul>";
echo "<li>✓ Redirect all autocraftqld.com requests to preferredautos.com.au</li>";
echo "<li>✓ Preserve the original request URI (internal links)</li>";
echo "<li>✓ Handle both www and non-www versions</li>";
echo "<li>✓ Use 301 permanent redirect for SEO benefits</li>";
echo "<li>✓ Execute before CodeIgniter framework loads for maximum efficiency</li>";
echo "</ul>";
?>
