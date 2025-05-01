from os import name
from faker import Faker
from robot.api.deco import keyword, library

fake = Faker('pt_BR')  # locale brasileiro

@library
class FakerLibrary:

    @keyword
    def generate_name(self):
        generate_name = name.replace("Dr. ", "").replace("Sr. ", "").replace("Sra. ", "")
        generate_name = generate_name.replace(".", "").replace(",", "")
        return fake.name()

    @keyword
    def generate_cpf(self):
        return fake.cpf()

    @keyword
    def generate_email(self):
        return fake.email()

    @keyword
    def generate_address(self):
        return fake.address()

    @keyword
    def generate_phone_number(self):
        return fake.msisdn()[2:]

    @keyword
    def generate_city(self):
        return fake.city()

    @keyword
    def generate_cep(self):
        return fake.postcode()

    @keyword
    def generate_company(self):
        return fake.company()
