import 'package:flutter/material.dart';

class MarketingAndPromotionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Marketing et Promotion',
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
              _buildTextField('Quels canaux de promotion utilisez-vous actuellement ?'),
              SizedBox(height: 20),
              _buildTextField('Quelles campagnes marketing avez-vous menées récemment ?'),
              SizedBox(height: 20),
              _buildTextField('Comment gérez-vous les plaintes des clients ?'),
              SizedBox(height: 20),
              _buildTextField('Quels sont les principaux défis en termes de promotion ?'),
              SizedBox(height: 20),
              _buildTextField('Quels moyens de paiement acceptez-vous ?'),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Logique pour enregistrer les informations saisies
                  print('Informations enregistrées');
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
