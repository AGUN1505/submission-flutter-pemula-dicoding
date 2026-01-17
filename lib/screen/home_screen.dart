import 'package:flutter/material.dart';
import '../model/data_kelas.dart';
import 'detail_screen.dart';
import 'profile_screen.dart';

const Color bgColor = Color(0xFFD9D9D9);
const Color primaryColor = Color(0xFF2D3C4F);

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<DataKelas> _filteredKelas;
  final TextEditingController _searchController = TextEditingController();
  String _selectedLevel = 'Semua';

  @override
  void initState() {
    super.initState();
    _filteredKelas = dataKelasList;
    _searchController.addListener(_filterKelas);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterKelas() {
    setState(() {
      _filteredKelas = dataKelasList.where((kelas) {
        final matchesSearch = kelas.namaKelas
            .toLowerCase()
            .contains(_searchController.text.toLowerCase());
        final matchesLevel = _selectedLevel == 'Semua' ||
            kelas.levelKelas
                .toLowerCase()
                .contains(_selectedLevel.toLowerCase());
        return matchesSearch && matchesLevel;
      }).toList();
    });
  }

  void _onLevelChanged(String level) {
    setState(() {
      _selectedLevel = level;
      _filterKelas();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        title: const Text(
          'Kelas Dicoding',
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w600,
            fontFamily: 'Quicksand',
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline, color: primaryColor),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Cari kelas...',
                  hintStyle: const TextStyle(fontFamily: 'Quicksand'),
                  prefixIcon: const Icon(Icons.search, color: primaryColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: primaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: primaryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: primaryColor, width: 2),
                  ),
                ),
              ),
            ),

            // Level Filter Chips
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildFilterChip('Semua'),
                  _buildFilterChip('Dasar'),
                  _buildFilterChip('Pemula'),
                  _buildFilterChip('Menengah'),
                  _buildFilterChip('Mahir'),
                  _buildFilterChip('Profesional'),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // List/Grid Content
            Expanded(
              child: _filteredKelas.isEmpty
                  ? Center(
                      child: Text(
                        'Kelas tidak ditemukan',
                        style: const TextStyle(
                          fontFamily: 'Quicksand',
                          color: primaryColor,
                        ),
                      ),
                    )
                  : LayoutBuilder(
                      builder: (context, constraints) {
                        final isWide = constraints.maxWidth >= 800;
                        final crossAxisCount =
                            constraints.maxWidth >= 1200 ? 3 : 2;

                        if (!isWide) {
                          return ListView.builder(
                            padding: const EdgeInsets.all(16),
                            itemCount: _filteredKelas.length,
                            itemBuilder: (context, index) {
                              final kelas = _filteredKelas[index];
                              return _KelasListCard(kelas: kelas);
                            },
                          );
                        }

                        return Center(
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 1200),
                            child: GridView.builder(
                              padding: const EdgeInsets.all(24),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: crossAxisCount,
                                mainAxisSpacing: 16,
                                crossAxisSpacing: 16,
                                childAspectRatio: 2.5,
                              ),
                              itemCount: _filteredKelas.length,
                              itemBuilder: (context, index) {
                                final kelas = _filteredKelas[index];
                                return _KelasListCard(kelas: kelas);
                              },
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    final isSelected = _selectedLevel == label;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: FilterChip(
        label: Text(
          label,
          style: TextStyle(
            fontFamily: 'Quicksand',
            color: isSelected ? Colors.white : primaryColor,
          ),
        ),
        selected: isSelected,
        onSelected: (_) => _onLevelChanged(label),
        backgroundColor: Colors.transparent,
        selectedColor: primaryColor,
        side: BorderSide(
          color: primaryColor,
          width: isSelected ? 0 : 1.2,
        ),
      ),
    );
  }
}

class _KelasListCard extends StatelessWidget {
  final DataKelas kelas;

  const _KelasListCard({required this.kelas});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailScreen(kelas: kelas),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: primaryColor,
            width: 1.2,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                kelas.gambarKelas,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    kelas.namaKelas,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: primaryColor,
                      fontFamily: 'Quicksand',
                    ),
                  ),
                  const SizedBox(height: 8),
                  _InfoRow(
                    icon: Icons.access_time,
                    text: kelas.jamBelajar,
                  ),
                  const SizedBox(height: 4),
                  _InfoRow(
                    icon: Icons.group,
                    text: kelas.siswaTerdaftar,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _InfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: primaryColor),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              color: primaryColor,
              fontFamily: 'Quicksand',
            ),
          ),
        ),
      ],
    );
  }
}
