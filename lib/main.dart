import 'package:flutter/material.dart';
import 'package:pakektp/pages/on_boarding_page.dart';
import 'package:pakektp/pages/personal/ambil_uang/ambil_uang_atm_kode_penarikan_detail_page.dart';
import 'package:pakektp/pages/personal/ambil_uang/ambil_uang_atm_kode_penarikan_page.dart';
import 'package:pakektp/pages/personal/ambil_uang/ambil_uang_atm_nominal_page.dart';
import 'package:pakektp/pages/personal/ambil_uang/ambil_uang_atm_rincian_page.dart';
import 'package:pakektp/pages/personal/ambil_uang/ambil_uang_mitra_nominal_page.dart';
import 'package:pakektp/pages/personal/ambil_uang/ambil_uang_mitra_scan_page.dart';
import 'package:pakektp/pages/personal/ambil_uang/ambil_uang_page.dart';
import 'package:pakektp/pages/personal/isi_sado/isi_saldo_bank_page.dart';
import 'package:pakektp/pages/personal/isi_sado/isi_saldo_detail_page.dart';
import 'package:pakektp/pages/personal/isi_sado/isi_saldo_process_page.dart';
import 'package:pakektp/pages/personal/kirim_saldo/kirim_saldo_page.dart';
import 'package:pakektp/pages/personal/kirim_saldo/kirim_saldo_penerima_page.dart';
import 'package:pakektp/pages/personal/kirim_saldo/kirim_saldo_scan_ktp_page.dart';
import 'package:pakektp/pages/personal/kirim_saldo/kirim_saldo_scan_qr_code_page.dart';
import 'package:pakektp/pages/personal/listrik/listrik_input_nomor_page.dart';
import 'package:pakektp/pages/personal/listrik/listrik_nominal_page.dart';
import 'package:pakektp/pages/personal/listrik/listrik_page.dart';
import 'package:pakektp/pages/personal/main_personal_page.dart';
import 'package:pakektp/pages/personal/minta_saldo/minta_saldo_process_page.dart';
import 'package:pakektp/pages/personal/minta_saldo/minta_saldo_scan_page.dart';
import 'package:pakektp/pages/personal/minta_saldo/minta_saldo_send_page.dart';
import 'package:pakektp/pages/personal/mitra_gerobak/mitra_gerobak_add_location_page.dart';
import 'package:pakektp/pages/personal/mitra_gerobak/mitra_warung_page.dart';
import 'package:pakektp/pages/personal/mitra_warung/mitra_warung_add_location_page.dart';
import 'package:pakektp/pages/personal/mitra_warung/mitra_warung_page.dart';
import 'package:pakektp/pages/personal/notification/notification_fr_page.dart';
import 'package:pakektp/pages/personal/notification/notification_otp_page.dart';
import 'package:pakektp/pages/personal/notification/notification_page.dart';
import 'package:pakektp/pages/personal/notification/notification_pin_page.dart';
import 'package:pakektp/pages/personal/paket_data/paket_data_input_nomor_page.dart';
import 'package:pakektp/pages/personal/paket_data/paket_data_nominal_page.dart';
import 'package:pakektp/pages/personal/paket_data/paket_data_page.dart';
import 'package:pakektp/pages/personal/pascabayar/pascabayar_input_nomor_page.dart';
import 'package:pakektp/pages/personal/pascabayar/pascabayar_page.dart';
import 'package:pakektp/pages/personal/pascabayar/pascabayar_rincian_tagihan_page.dart';
import 'package:pakektp/pages/personal/pembayaran/pembayaran_nominal_page.dart';
import 'package:pakektp/pages/personal/pembayaran/pembayaran_page.dart';
import 'package:pakektp/pages/personal/pembayaran/pembayaran_pilih_layanan_page.dart';
import 'package:pakektp/pages/personal/pulsa/pulsa_input_nomor_page.dart';
import 'package:pakektp/pages/personal/pulsa/pulsa_nominal_page.dart';
import 'package:pakektp/pages/personal/pulsa/pulsa_page.dart';
import 'package:pakektp/pages/personal/sign_in_personal_page.dart';
import 'package:pakektp/pages/personal/sign_up_personal_page.dart';
import 'package:pakektp/pages/personal/tagihan/tagihan_input_nomor_page.dart';
import 'package:pakektp/pages/personal/tagihan/tagihan_page.dart';
import 'package:pakektp/pages/personal/tagihan/tagihan_pilih_layanan.dart';
import 'package:pakektp/pages/personal/tagihan/tagihan_rincian_tagihan_page.dart';
import 'package:pakektp/pages/personal/transaction_success/transaction_success_page.dart';
import 'package:pakektp/pages/personal/transfer_bank/transfer_bank_nominal_page.dart';
import 'package:pakektp/pages/personal/transfer_bank/transfer_bank_page.dart';
import 'package:pakektp/pages/personal/uang_elektronik/uang_elektronik_input_nomor_page.dart';
import 'package:pakektp/pages/personal/uang_elektronik/uang_elektronik_nominal_page.dart';
import 'package:pakektp/pages/personal/uang_elektronik/uang_elektronik_saldo_page.dart';
import 'package:pakektp/pages/personal/zakat_dan_donasi/donasi_notification_page.dart';
import 'package:pakektp/pages/personal/zakat_dan_donasi/donasi_pilih_embaga_page.dart';
import 'package:pakektp/pages/personal/zakat_dan_donasi/zakat_bayar_zakat_page.dart';
import 'package:pakektp/pages/personal/zakat_dan_donasi/zakat_dan_donasi_page.dart';
import 'package:pakektp/pages/personal/zakat_dan_donasi/zakat_hitung_zakat_page.dart';
import 'package:pakektp/pages/personal/zakat_dan_donasi/zakat_notification_page.dart';
import 'package:pakektp/pages/personal/zakat_dan_donasi/zakat_pilih_lembaga_page.dart';
import 'package:pakektp/pages/sign_in_page.dart';
import 'package:pakektp/providers/page_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          // Halaman Utama
          '/': (context) => const OnBoardingPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up-personal': (context) => const SignUpPersonalPage(),
          '/sign-in-personal': (context) => const SignInPersonalPage(),
          '/main-personal': (context) => const MainPersonalPage(),

          // Pilih Notification
          '/notification': (context) => const NotificationPage(),
          '/notification-otp': (context) => const NotificationOtpPage(),
          '/notification-fr': (context) => const NotificationFrPage(),
          '/notification-pin': (context) => const NotificationPinPage(),

          // Tranasction Success untuk semua transaksi
          '/transaction-success': (context) => const TransactionSuccessPage(),

          // Isi Saldo
          '/isi-saldo-bank': (context) => const IsiSaldoBankPage(),
          '/isi-saldo-detail': (context) => const IsiSaldoDetailPage(),
          '/isi-saldo-process': (context) => const IsiSaldoProcessPage(),

          // Minta Saldo
          '/minta-saldo-scan': (context) => const MintaSaldoScanPage(),
          '/minta-saldo-send': (context) => const MintaSaldoSendPage(),
          '/minta-saldo-process': (context) => const MintaSaldoProcessPage(),

          // Kirim Saldo
          '/kirim-saldo': (context) => const KirimSaldoPage(),
          '/kirim-saldo-penerima': (context) => const KirimSaldoPenerimaPage(),
          '/kirim-saldo-scan-ktp': (context) => const KirimSaldoScanKtpPage(),
          '/kirim-saldo-scan-qr-code': (context) =>
              const KirimSaldoScanQrCodePage(),

          // Menu Transaksi
          // Listrik
          '/listrik': (context) => const ListrikPage(),
          '/listrik-input-nomor': (context) => const ListrikInputNomorPage(),
          '/listrik-nominal': (context) => const ListrikNominalPage(),

          // Isi Pulsa
          '/pulsa': (context) => const PulsaPage(),
          '/pulsa-input-nomor': (context) => const PulsaInputNomorPage(),
          '/pulsa-nominal': (context) => const PulsaNominalPage(),

          // Paket Data
          '/paket-data': (context) => const PaketDataPage(),
          '/paket-data-input-nomor': (context) =>
              const PaketDataInputNomorPage(),
          '/paket-data-nominal': (context) => const PaketDataNominalPage(),

          // Pascabayar
          '/pascabayar': (context) => const PascabayarPage(),
          '/pascabayar-input-nomor': (context) =>
              const PascabayarInputNomorPage(),
          '/pascabayar-rincian-tagihan': (context) =>
              const PascabayarRincianTagihanPage(),

          // Pembayaran
          '/pembayaran': (context) => const PembayaranPage(),
          '/pembayaran-pilih-layanan': (context) =>
              const PembayaranPilihLayananPage(),
          '/pembayaran-nominal': (context) => const PembayaranNominalPage(),

          //Uang Elektronik
          '/uang-elektronik-input-nomor': (context) =>
              const UangElektronikInputNomorPage(),
          '/uang-elektronik-saldo': (context) =>
              const UangElektronikSaldoPage(),
          '/uang-elektronik-nominal': (context) =>
              const UangElektronikNominalPage(),

          // Tagihan
          '/tagihan': (context) => const TagihanPage(),
          '/tagihan-pilih-layanan': (context) =>
              const TagihanPilihLayananPage(),
          '/tagihan-input-nomor': (context) => const TagihanInputNomorPage(),
          '/tagihan-rincian-tagihan': (context) =>
              const TagihanRincianTagihanPage(),

          // Transfer Bank
          '/transfer-bank': (context) => const TransferBankPage(),
          '/transfer-bank-nominal': (context) =>
              const TransferBankNominalPage(),

          // Zakat dan Donasi
          '/zakat-dan-donasi': (context) => const ZakatDanDonasiPage(),
          '/zakat-pilih-lembaga': (context) => const ZakatPilihLembagaPage(),
          '/zakat-hitung-zakat': (context) => const ZakatHitungZakatPage(),
          '/zakat-bayar-zakat': (context) => const ZakatBayarZakatPage(),
          '/zakat-notification': (context) => const ZakatNotificationPage(),

          '/donasi-pilih-lembaga': (context) => const DonasiPilihLembagaPage(),
          '/donasi-notification': (context) => const DonasiNotificationPage(),

          // Ambil Uang
          '/ambil-uang': (context) => const AmbilUangPage(),
          '/ambil-uang-mitra-scan': (context) => const AmbilUangMitraScanPage(),
          '/ambil-uang-mitra-nominal': (context) =>
              const AmbilUangMitraNominalPage(),

          '/ambil-uang-atm-nominal': (context) =>
              const AmbilUangAtmNominalPage(),
          '/ambil-uang-atm-rincian': (context) =>
              const AmbilUangAtmRincianPage(),

          '/ambil-uang-atm-kode-penarikan': (context) =>
              const AmbilUangAtmKodePenarikanPage(),

          '/ambil-uang-atm-kode-penarikan-detail': (context) =>
              const AmbilUangAtmKodePenarikanDetailPage(),

          // Pajak Belum ada

          // Mitra Warung
          '/mitra-warung': (context) => const MitraWarungPage(),
          '/mitra-warung-add-location': (context) =>
              const MitraWarungAddLocationPage(),

          // Mitra Gerobak
          '/mitra-gerobak': (context) => const MitraGerobakPage(),
          '/mitra-gerobak-add-location': (context) =>
              const MitraGerobakAddLocationPage(),
        },
      ),
    );
  }
}
