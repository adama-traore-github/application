import 'package:flutter/material.dart';

class RoomsAndAccommodationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chambres et Hebergements',
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
              _buildTextField('Nombre de chambres'),
              SizedBox(height: 20),
              _buildTextField('Types de chambres'),
              SizedBox(height: 20),
              _buildTextField('Equipements disponibles dans les chambres'),
              SizedBox(height: 20),
              _buildTextField('Caracteristiques de vos chambres'),
              SizedBox(height: 20),
              _buildTextField('Taille des lits'),
              SizedBox(height: 20),
              _buildTextField('Chambres accessibles aux personnes a mobilite reduite'),
              SizedBox(height: 20),
              _buildTextField('Chambre non-fumeurs'),
              SizedBox(height: 20),
              _buildTextField('Disposez-vous d\'un service de restauration ?'),
              SizedBox(height: 20),
              _buildTextField('Disposez-vous d\'un service de petit-dejeuner ?'),
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
