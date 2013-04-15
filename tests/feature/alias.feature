Scenario: Given step alias is an independent copy
	Given I have an empty list
	And I have foo (which is 1) in my list
	And I have bar (alias of foo) in my list
	When I do crash (which is 2)
	And I do boom (alias of crash)
	Then my list should be [1, 1, 2, 2]
