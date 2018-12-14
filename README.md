# Bnb Manager

Lien en production : [Bnb Manager](http://bnbmanager.herokuapp.com/)

## Description
Bnb Manager propose à des locataires/propriétaires qui souhaitent sous-louer leur logement, d'enregistrer leur bien sur airbnb (photos, adresse, caractéristiques, etc) et d'indiquer les dates de disponibilité de ce dernier. Une prise en charge totale de l'équipe de Bnb Manager est assurée : check in, check out, changement du linge, ménage, etc. Et surtout, avec une disponibilité H24 pour prendre soin des locataires à tout moment et intervenir rapidement en cas de besoin. Les "concierges" sont bilingues et ont une parfaite connaissance de la région.
Le locataire pourra bénéficier d'un devis et de conseils de l'équipe afin de choisir le pack le plus adapté à ses besoins (pack classique, confort ou premium ou à la carte). Le versement est effectué aux utilisateurs après chaque location, une facture est disponible en ligne.

## MVC
**User :**

Devise : enregistrement et connexion avec une session utilisateur et une session admin. Ajout d'attributs supplémentaires (*application_controller.rb*) avec le prénom, le nom, la date d'anniversaire, le numéro de téléphone de l'utilisateur. Un élément Iban sera également à fournir à l'avenir par l'utilisateur (contrôle de la validité de l'iban via la *gem iban-tools* - *app/validator/iban_validator.rb*).
Après l'inscription de l'utilisateur, un mail de bienvenue personnalisé est envoyé (*gem Gibbon / Mailchimp*).

Privilège admin : l'équipe a la possibilité de changer le statut du bien (location / pas de location en cours) et upload de la facture-client.

**Property (Full CRUD) :**

Création, update et suppression d'un bien par l'utilisateur.
L'utilisateur peut ajouter directement son bien après son inscription ou peut y revenir plus tard dans son dashboard. La fiche du bien devra mentionner : la superficie, le nombre de couchages, le nombre de pièces, l'adresse (en remplissage automatique via la *gem Google Maps*). Enfin, l'utilisateur pourra fournir des photos de son bien, uploadées et enregistrées par nos services via ActiveStorage (*gem Azur Storage*).

**Petites features en plus :**

Mailer : Formulaires de contact du visiteur ou de l'utilisateur dans le footer et la page contact. Un mailer branché via Gmail et un Model en ActiveModel (soit sans table).

Twilio : Envoi d'un sms à chaque nouvel ajout de bien par un utilisateur à l'équipe de Bnb Manager.
> File : *app/controllers/property_controller.rb* + *config/initializers/twilio.rb* + *app/services/twilio_text_messenger.rb*

Twitter : Bot automatique pour la promotion du site naissant.
> File : *app/services/twitter_bnb.rb*

### Contributions
Réalisation par la team de Nice :
- [Nikita Vasilev](https://github.com/Nikitavasilev) (front)
- [Thomas Charvet](https://github.com/TomacTh) (back)
- [Nathaniel Debache](https://github.com/Natdenice) (front)
- [Arthur Mansuy](https://github.com/tutus06) (back)
- [Ysaline Macé](https://github.com/Ysalien) (back)

#### Contact
Notre team à retrouver sur : [THP nice](https://github.com/THP-organization)
