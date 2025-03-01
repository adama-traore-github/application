import 'package:flutter/material.dart';

class EstablishmentInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Informations de l\'Etablissement',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 2,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: [
              SizedBox(height: 20),
              _buildTextField('Nom de l\'etablissement'),
              SizedBox(height: 20),
              _buildTextField('Contact'),
              SizedBox(height: 20),
              _buildTextField('Email'),
              SizedBox(height: 20),
              _buildTextField('Site web'),
              SizedBox(height: 20),
              _buildTextField('Reseaux sociaux'),
              SizedBox(height: 20),
              _buildTextField('Quartier'),
              SizedBox(height: 20),
              _buildTextField('Secteur'),
              SizedBox(height: 20),
              _buildTextField('Pays'),
              SizedBox(height: 20),
              _buildTextField('Ville'),
              SizedBox(height: 20),
              _buildTextField('Annee de creation'),
              SizedBox(height: 20),
              _buildTextField('Type d\'etablissement'),
              SizedBox(height: 20),
              _buildTextField('Classification (Nombres d\'etoiles)'),
              SizedBox(height: 20),
              _buildTextField('Votre etablissement fait-il partie d\'une chaine ou est-il independant ?'),
              SizedBox(height: 20),
              _buildTextField('Votre etablissement dispose-t-il d\'un bar ou d\'une cafetaria ?'),
              SizedBox(height: 20),
              _buildTextField('Disposez-vous d\'un site web ? Si oui, precisez'),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Logique pour enregistrer les informations saisies
                  print('Informations enregistrees');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Enregistrer',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.black87),
        filled: true,
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blueAccent, width: 1.5),
        ),
      ),
      style: TextStyle(color: Colors.black87),
    );
  }
}
