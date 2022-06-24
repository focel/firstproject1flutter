import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../my_sschedule_availability/my_sschedule_availability_widget.dart';
import '../splash_screen/splash_screen_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageProfileWidget extends StatefulWidget {
  const HomePageProfileWidget({Key key}) : super(key: key);

  @override
  _HomePageProfileWidgetState createState() => _HomePageProfileWidgetState();
}

class _HomePageProfileWidgetState extends State<HomePageProfileWidget> {
  DateTime datePicked1;
  DateTime datePicked2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF2251A7),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 44, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SplashScreenWidget(),
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.arrow_back_sharp,
                                color:
                                    FlutterFlowTheme.of(context).customColor2,
                                size: 50,
                              ),
                            ),
                            Text(
                              'Welcome',
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                              child: StreamBuilder<MedicalUsersRecord>(
                                stream: MedicalUsersRecord.getDocument(
                                    currentUserReference),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: CircularProgressIndicator(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                      ),
                                    );
                                  }
                                  final textMedicalUsersRecord = snapshot.data;
                                  return Text(
                                    textMedicalUsersRecord.displayName,
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .customColor2,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                'Checkout your profile',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF8B97A2),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                            child: Image.network(
                              'https://picsum.photos/seed/400/600',
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 150,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(-0.75, 0),
                  child: Container(
                    width: 50,
                    height: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/user_2@2x.png',
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                    child: StreamBuilder<MedicalUsersRecord>(
                      stream:
                          MedicalUsersRecord.getDocument(currentUserReference),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                              ),
                            ),
                          );
                        }
                        final textMedicalUsersRecord = snapshot.data;
                        return Text(
                          valueOrDefault<String>(
                            textMedicalUsersRecord.displayName,
                            'Random User',
                          ),
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF151B1E),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                        );
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.8, 0),
                  child: StreamBuilder<MedicalUsersRecord>(
                    stream:
                        MedicalUsersRecord.getDocument(currentUserReference),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color:
                                  FlutterFlowTheme.of(context).secondaryColor,
                            ),
                          ),
                        );
                      }
                      final textMedicalUsersRecord = snapshot.data;
                      return Text(
                        textMedicalUsersRecord.fieldInterests,
                        style: FlutterFlowTheme.of(context).bodyText1,
                      );
                    },
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: StreamBuilder<MedicalUsersRecord>(
                              stream: MedicalUsersRecord.getDocument(
                                  currentUserReference),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                      ),
                                    ),
                                  );
                                }
                                final textMedicalUsersRecord = snapshot.data;
                                return Text(
                                  valueOrDefault<String>(
                                    textMedicalUsersRecord.medicalSpeciality,
                                    'Random Medical Speciality',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF151B1E),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                              child: StreamBuilder<MedicalUsersRecord>(
                                stream: MedicalUsersRecord.getDocument(
                                    currentUserReference),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: CircularProgressIndicator(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                      ),
                                    );
                                  }
                                  final textMedicalUsersRecord = snapshot.data;
                                  return Text(
                                    textMedicalUsersRecord.currentAddress,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0xFF8B97A2),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Choose time available for appointments:',
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            lineHeight: 3,
                          ),
                    ),
                    Divider(
                      height: 3,
                      thickness: 1,
                      color: Color(0xFFE1E4E5),
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () async {
              await DatePicker.showDatePicker(
                context,
                showTitleActions: true,
                onConfirm: (date) {
                  setState(() => datePicked1 = date);
                },
                currentTime: getCurrentTimestamp,
                minTime: getCurrentTimestamp,
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              constraints: BoxConstraints(
                maxWidth: 100,
              ),
              decoration: BoxDecoration(
                color: Color(0xFF8DAEF2),
              ),
              child: Image.asset(
                'assets/images/calendar_png.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.05, 0),
            child: InkWell(
              onTap: () async {
                await DatePicker.showDatePicker(
                  context,
                  showTitleActions: true,
                  onConfirm: (date) {
                    setState(() => datePicked2 = date);
                  },
                  currentTime: getCurrentTimestamp,
                  minTime: getCurrentTimestamp,
                );
              },
              child: Text(
                valueOrDefault<String>(
                  dateTimeFormat('MMMMEEEEd', datePicked1),
                  'Random Date',
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.05, 0),
            child: FFButtonWidget(
              onPressed: () async {
                setState(() =>
                    FFAppState().doctorLocalState = currentUserDisplayName);
                setState(() => FFAppState().specialityLocalState =
                    valueOrDefault(currentUserDocument?.medicalSpeciality, ''));
                setState(() => FFAppState().timeLocalState = datePicked1);

                final todosCreateData = createTodosRecordData(
                  time: datePicked1,
                  displayName: FFAppState().doctorLocalState,
                  medicalSpeciality: FFAppState().specialityLocalState,
                );
                await TodosRecord.collection.doc().set(todosCreateData);
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MySscheduleAvailabilityWidget(),
                  ),
                );
              },
              text: 'Medical Appoitments',
              options: FFButtonOptions(
                width: 200,
                height: 45,
                color: FlutterFlowTheme.of(context).primaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MySscheduleAvailabilityWidget(),
                  ),
                );
              },
              text: 'Only watch data',
              options: FFButtonOptions(
                width: 180,
                height: 40,
                color: FlutterFlowTheme.of(context).primaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
