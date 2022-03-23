import { LightningElement, track, wire } from 'lwc';
import  getCurrentDollarExchange from '@salesforce/apex/DollarExchangeRateController.getCurrentDollarExchange';

export default class DollarExchangeRate extends LightningElement {
    @wire(getCurrentDollarExchange)
    currentValue; 
}