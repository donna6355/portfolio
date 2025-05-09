import 'dart:js' as js;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'widgets/skill_badge.dart';
import '../constants/images.dart';
import '../presentation/widgets/middot_line.dart';
import '../extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 40),
                  child: Image.asset(Img.profile, width: 200),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16, left: 16),
                      child: Text(
                        '개발자 전다나',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              if (kIsWeb) {
                                js.context.callMethod(
                                    'open', ['https://github.com/donna6355']);
                              }
                            },
                            child: const Text('깃헙')),
                        TextButton(
                            onPressed: () {
                              if (kIsWeb) {
                                js.context.callMethod('open', [
                                  'https://play.google.com/store/apps/developer?id=Donna+Jun'
                                ]);
                              }
                            },
                            child: const Text('앱 구경가기')),
                        TextButton(
                            onPressed: () {
                              if (kIsWeb) {
                                js.context.callMethod(
                                    'open', ['mailto:donnajun1214@gmail.com']);
                              }
                            },
                            child: const Text('이메일 보내기')),
                      ],
                    ),
                    MiddotLine(
                      '과거에는 국제 행사 기획자로서 일했다가, 웹개발로 소프트웨어 개발을 시작해서\n현재는 플러터와 다트로 크로스 플랫폼을 탐험하는 ',
                      '${DateTime.now().expYear}년차 개발자',
                    ),
                    const MiddotLine(
                        '아키텍처 설계와 클린 코드부터 전체 서비스와 UI/UX를 고민하는 ', '큰그림 개발자'),
                    const MiddotLine('정확한 문제 파악부터 해결 방안까지 고민하는 ', '프로 문제 해결러'),
                    const MiddotLine('사고뭉치 반려묘에게 잡혀사는 ', '호구 집사'),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            const Wrap(
              children: [
                SkillBadge(Img.flutter),
                SkillBadge(Img.dart),
                SkillBadge(Img.andStudio),
                SkillBadge(Img.xCode),
                SkillBadge(Img.kotlin),
                SkillBadge(Img.switft),
              ],
            ),
            const Wrap(
              children: [
                SkillBadge(Img.html),
                SkillBadge(Img.js),
                SkillBadge(Img.css),
                SkillBadge(Img.vue),
                SkillBadge(Img.node),
                SkillBadge(Img.mongo),
              ],
            ),
            const SizedBox(height: 32),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            const SizedBox(
              width: 800,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 32),
                    child: Column(
                      children: [
                        Text(
                          'Project',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            const SizedBox(
              width: 800,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Career',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        MiddotLine(
                            '2023.11 ~ 2024.01 모바일 앱 개발 (계약직) ', '퓨처커넥트'),
                        MiddotLine(
                            '2022.04 ~ 2023.11 모바일/데스크탑 앱 개발 ', '오이스터에이블'),
                        MiddotLine(
                            '2020.11 ~ 2022.04 웹, 모바일 앱 개발 ', '플랙스 뉴럴랩스'),
                        MiddotLine('2019.09 ~ 2020.02 ', 'TN Korea'),
                        MiddotLine('2015.04 ~ 2018.05 국제행사 기획 ',
                            '킴스엔앰티/Pacific World'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
