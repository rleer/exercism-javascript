//
// This is only a SKELETON file for the 'Line Up' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const format = (customerName, customerNumber) => {
  let ordinalSuffix;
  switch (customerNumber % 10) {
    case 1:
      ordinalSuffix = 'st';
      break;
    case 2:
      ordinalSuffix = 'nd';
      break;
    case 3:
      ordinalSuffix = 'rd';
      break;
    default:
      ordinalSuffix = 'th'
  }
  if (customerNumber % 100 === 11 || customerNumber % 100 === 12 || customerNumber % 100 === 13) {
    ordinalSuffix = 'th';
  }
  return `${customerName}, you are the ${customerNumber}${ordinalSuffix} customer we serve today. Thank you!`
};
