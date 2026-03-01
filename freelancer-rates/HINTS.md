# Hints

## 1. Calculate the day rate given an hourly rate

- Use the arithmetic operators as mentioned in the introduction of this exercise.

## 2. Calculate the number of workdays given a budget

- First determine the day rate, then calculate the number of days, and finally round that number down.

## 3. Calculate the discounted rate for large projects

- Round down the result from division to get the number of full months.
- `100% - discount` equals the percentage charged after the discount is applied.
- Use `%`, the remainder operator, to calculate the number of days exceeding full months.
- Add the discounted month rates and full day rates and round it up


3. Calculate the discounted rate for large projects
Often, the freelancer's clients hire them for projects spanning over multiple months. In these cases, the freelancer decides to offer a discount for every full month, and the remaining days are billed at day rate. Your excellent work-life balance means that you only work 22 days in each calendar month, so every month has 22 billable days. Help them estimate their cost for such projects, given an hourly rate, the number of billable days the project contains, and a monthly discount rate. The discount is always passed as a number, where 42% becomes 0.42. The result must be rounded up to the nearest whole number.

priceWithMonthlyDiscount(89, 230, 0.42);
// => 97972