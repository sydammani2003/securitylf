import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:securitylf/screens/scanner.dart';

class SecurityScannerScreen extends StatefulWidget {
  const SecurityScannerScreen({super.key});

  @override
  State<SecurityScannerScreen> createState() => _SecurityScannerScreenState();
}

class _SecurityScannerScreenState extends State<SecurityScannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Status bar row with time and icons

              // Header with avatar and welcome message
              Row(
                children: [
                  // Avatar circle with initials
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xFF333333),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        'JD',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Welcome, Security Officer',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // Scan QR button
              Center(
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Scanning()));
                        },
                        child: SvgPicture.asset('assets/images/FRAME (2).svg')),
                    const SizedBox(height: 12),
                    const Text(
                      'Tap to Scan',
                      style: TextStyle(
                        color: Color(0xFF00C78C),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // Recent scans section
              const Text(
                'Recent Scans',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(205, 255, 255, 255)),
              ),

              const SizedBox(height: 16),

              // Scan records
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ScanRecord(
                        name: 'John Smith',
                        time: '2:30 PM',
                        location: 'Main Building Access',
                        isVerified: true,
                      ),

                      const SizedBox(height: 12),

                      ScanRecord(
                        name: 'Sarah Wilson',
                        time: '2:15 PM',
                        location: 'Parking Access',
                        isVerified: true,
                      ),

                      const SizedBox(height: 12),

                      ScanRecord(
                        name: 'Mike Johnson',
                        time: '2:00 PM',
                        location: 'Conference Room',
                        isVerified: false,
                      ),
                      const SizedBox(height: 12),
                      // Scan records
                      ScanRecord(
                        name: 'John Smith',
                        time: '2:30 PM',
                        location: 'Main Building Access',
                        isVerified: true,
                      ),

                      const SizedBox(height: 12),

                      ScanRecord(
                        name: 'Sarah Wilson',
                        time: '2:15 PM',
                        location: 'Parking Access',
                        isVerified: true,
                      ),

                      const SizedBox(height: 12),

                      ScanRecord(
                        name: 'Mike Johnson',
                        time: '2:00 PM',
                        location: 'Conference Room',
                        isVerified: false,
                      ),
                      const SizedBox(height: 12),
                      // Scan records
                      ScanRecord(
                        name: 'John Smith',
                        time: '2:30 PM',
                        location: 'Main Building Access',
                        isVerified: true,
                      ),

                      const SizedBox(height: 12),

                      ScanRecord(
                        name: 'Sarah Wilson',
                        time: '2:15 PM',
                        location: 'Parking Access',
                        isVerified: true,
                      ),

                      const SizedBox(height: 12),

                      ScanRecord(
                        name: 'Mike Johnson',
                        time: '2:00 PM',
                        location: 'Conference Room',
                        isVerified: false,
                      ),
                      const SizedBox(height: 12),
                      // Scan records
                      ScanRecord(
                        name: 'John Smith',
                        time: '2:30 PM',
                        location: 'Main Building Access',
                        isVerified: true,
                      ),

                      const SizedBox(height: 12),

                      ScanRecord(
                        name: 'Sarah Wilson',
                        time: '2:15 PM',
                        location: 'Parking Access',
                        isVerified: true,
                      ),

                      const SizedBox(height: 12),

                      ScanRecord(
                        name: 'Mike Johnson',
                        time: '2:00 PM',
                        location: 'Conference Room',
                        isVerified: false,
                      ),
                      const SizedBox(height: 12),
                      // Scan records
                      ScanRecord(
                        name: 'John Smith',
                        time: '2:30 PM',
                        location: 'Main Building Access',
                        isVerified: true,
                      ),

                      const SizedBox(height: 12),

                      ScanRecord(
                        name: 'Sarah Wilson',
                        time: '2:15 PM',
                        location: 'Parking Access',
                        isVerified: true,
                      ),

                      const SizedBox(height: 12),

                      ScanRecord(
                        name: 'Mike Johnson',
                        time: '2:00 PM',
                        location: 'Conference Room',
                        isVerified: false,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScanRecord extends StatelessWidget {
  final String name;
  final String time;
  final String location;
  final bool isVerified;

  const ScanRecord({
    super.key,
    required this.name,
    required this.time,
    required this.location,
    required this.isVerified,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Name and location
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              const SizedBox(height: 4),
              Text(
                location,
                style: TextStyle(
                  fontSize: 14,
                  color: const Color(0xFF00C78C),
                ),
              ),
            ],
          ),

          // Time and verification status
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Icon(
                    isVerified ? Icons.check : Icons.close,
                    color:
                        isVerified ? const Color(0xFF00C78C) : Colors.redAccent,
                    size: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    isVerified ? 'Verified' : 'Invalid',
                    style: TextStyle(
                      fontSize: 14,
                      color: isVerified
                          ? const Color(0xFF00C78C)
                          : Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
