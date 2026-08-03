import { LightningElement, api } from 'lwc';

import getContacts from '@salesforce/apex/AccountControler.getContactsByAccount';

export default class LisContacts extends LightningElement {

    @api
    recordId;

    contatos = []


    connectedCallback() {
        getContacts({contaId:this.recordId})
            .then((contatosRetornados) =>{
                this.contatos = contatosRetornados;
            })
    } 

}