/// <reference types="cypress" />
import * as Faker from 'faker';

context('test faker', function() {
    it('get faker to work', function() {
        cy.log(Faker.name.firstName());
    })
})
