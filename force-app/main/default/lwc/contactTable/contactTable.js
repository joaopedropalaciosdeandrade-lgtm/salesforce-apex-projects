import { LightningElement, api } from 'lwc';

export default class ContactTable extends LightningElement {
    @api recordId;

    data = [];

    columns = [
        { label: 'Nome', fieldName: 'Name' },
        { label: 'Email', fieldName: 'Email' },
        { label: 'Telefone', fieldName: 'Phone' },
        { label: 'Cargo', fieldName: 'Title' }
    ];
}