# Bnb Manager

Lien en production : [Bnb Manager](http://bnbmanager.herokuapp.com/)

## Description
Bnb Manager propose à des locataires/propriétaires qui souhaitent sous-louer leur logement, d'enregistrer leur bien sur airbnb (photos, adresse, caractéristiques, etc) et d'indiquer les dates de disponibilité de ce dernier. Une prise en charge totale de l'équipe de Bnb Manager est assurée : check in, check out, changement du linge, ménage, etc. Et surtout, avec une disponibilité H24 pour prendre soin des locataires à tout moment et intervenir rapidement en cas de besoin. Les "concierges" sont bilingues et ont une parfaite connaissance de la région.
Le locataire pourra bénéficier d'un devis et de conseils de l'équipe afin de choisir le pack le plus adapté à ses besoins (pack classique, confort ou premium ou à la carte). Le versement est effectué aux utilisateurs après chaque location, une facture est disponible en ligne.

## MVC
- User :
Enregistrement / connexion sous la gem devise avec une session utilisateur et une session admin.
Contrôle de l'iban fourni par l'utilisateur via la gem iban-tools.
Mailer post-inscription via la gem gibbon (Mailchimp).
Privilège admin : possibilité de changer le statut du bien (location / pas de location en cours) et upload de la facture-client.

- Property (Full CRUD) :
Création, update et suppression d'un bien par l'utilisateur.
Remplissage automatique de l'adresse via la gem Google Maps.
Upload des photos du bien via ActiveStorage (gem Azur Storage).

- Petites features en plus :
Formulaires de contact (footer + page contact).
Envoi d'un sms à chaque nouvel ajout de bien par un utilisateur (gem Twilio) à l'équipe de Bnb Manager.
Bot Twitter pour la promotion du site naissant (gem Twitter).

### Contributions
Réalisation par la team de Nice :
- [Nikita Vasilev](https://github.com/Nikitavasilev) (front)
- [Thomas Charvet](https://github.com/TomacTh) (back)
- [Nathaniel Debache](https://github.com/Natdenice) (front)
- [Arthur Mansuy](https://github.com/tutus06) (back)
- [Ysaline Macé](https://github.com/Ysalien) (back)

#### Contact
Notre team à retrouver sur : [THP nice](https://github.com/THP-organization)
