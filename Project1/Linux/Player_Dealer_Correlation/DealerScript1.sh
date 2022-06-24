#1/bin/bash

echo "Date: 0310" >> Dealer_working_during_losses
echo "Time: 5:00:00 AM" >> Dealer_working_during_losses
grep "05:00:00 AM" 0310_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealer_working_during_losses

echo "Date: 0310" >> Dealer_working_during_losses
echo "Time: 08:00:00 AM" >> Dealer_working_during_losses
grep "08:00:00 AM" 0310_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealer_working_during_losses

echo "Date: 0310" >> Dealer_working_during_losses
echo "Time: 2:00:00 PM" >> Dealer_working_during_losses
grep "02:00:00 PM" 0310_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealer_working_during_losses

echo "Date: 0310" >> Dealer_working_during_losses
echo "Time: 8:00:00 PM" >> Dealer_working_during_losses
grep "08:00:00 PM" 0310_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealer_working_during_losses

echo "Date: 0312" >> Dealer_working_during_losses
echo "Time: 5:00:00 AM" >> Dealer_working_during_losses
grep "05:00:00 AM" 0312_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealer_working_during_losses

echo "Date: 0312" >> Dealer_working_during_losses
echo "Time: 8:00:00 AM" >> Dealer_working_during_losses
grep "08:00:00 AM" 0312_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealer_working_during_losses

echo "Date: 0312" >> Dealer_working_during_losses
echo "Time: 2:00:00 PM" >> Dealer_working_during_losses
grep "02:00:00 PM" 0312_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealer_working_during_losses

echo "Date: 0312" >> Dealer_working_during_losses
echo "Time: 8:00:00 PM" >> Dealer_working_during_losses
grep "08:00:00 PM" 0312_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealer_working_during_losses

echo "Date: 0312" >> Dealer_working_during_losses
echo "Time: 11:00:00 PM" >> Dealer_working_during_losses
grep "11:00:00 PM" 0312_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealer_working_during_losses

echo "Date: 0315" >> Dealer_working_during_losses
echo "Time: 5:00:00 AM" >> Dealer_working_during_losses
grep "05:00:00 AM" 0315_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealer_working_during_losses

echo "Date: 0315" >> Dealer_working_during_losses
echo "Time: 8:00:00 AM" >> Dealer_working_during_losses
grep "08:00:00 AM" 0315_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealer_working_during_losses

echo "Date: 0315" >> Dealer_working_during_losses
echo "Time: 2:00:00 PM" >> Dealer_working_during_losses
grep "02:00:00 PM" 0315_Dealer_schedule | awk -F" " '{print $5, $6}' >> Dealer_working_during_losses


