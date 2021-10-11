import 'package:flutter/material.dart';
import 'package:flutter_web/components/product_summary.dart';
import 'package:flutter_web/settings/routes.dart';

class MajorItems{
  //Site Title
  static const String siteTitle = "PortFolio Ver.Flutter";

//App Bar Title
  static const String appBarTitle = "Yotto's PortFolio Site";

//Major Items
  static const String about = "about";
  static const String skill = "skill";
  static const String products = "products";
  static const String robotics = "robotics";
  static const String other =  "other";
  static const String anyMore = "Any More";
  static const String allProduct = "All Products";
  static const String details = "Details";
  static const String useSkill = "UseSkill";
}

class Sentences {
  //Sentence
  static const String topMessage = "Welcome to \n"
      "Yodai's PortFolio";
  static const String myJobSample = "Robot Software Engineer. \n"
      "Android Application Engineer. \n"
      "etc...";
  static const String myImage = "images/IMG_myicon.jpg";
  static const String selfIntroduction = "名前：下沢　陽大\n　　　Shimosawa Youdai\n"
      "所属：仙台高等専門学校\n　　　総合工学科Ⅱ類\n　　　ロボティクスコース5年\n"
      "出身：宮城県仙台市\n"
      "趣味：ドライブ, ゲーム";
  static const String notFound = "指定のURLは存在しません。";
  static const String screenSizeWarning = "閲覧にはフルHD以上のディスプレイを使用してください。";
}

class SkillMaps {
  static const Map<String, String> roboticsSkillMap = {
    "STM32" : "images/tool_icon/microcomputer.png",
    "C++" : "images/tool_icon/c++.png",
    "RealSense" : "images/tool_icon/realsense.png",
    "OpenCV" : "images/tool_icon/opencv.png",
    "ROS1" : "images/tool_icon/ros.png",
    "Raspberry Pi" : "images/tool_icon/raspberrypi.png",
  };
  static const Map<String, String> otherSkillMap = {
    "Android App" : "images/tool_icon/androidos.png",
    "Ubuntu" : "images/tool_icon/ubuntu.png",
    "Python3" : "images/tool_icon/python.png",
    "Unity" : "images/tool_icon/unity.png",
    "Pytorch" : "images/tool_icon/pytorch-icon.png",
    "Flutter" : "images/tool_icon/flutter.png",
  };
}

// // const String levelIntroduction = "Level1：1年程度の経験　Level2：2年程度の経験\n"
// //     "Level3：3年程度の経験　Level4：4年程度の経験";
// const Map<String, String> roboticsSkillMap = {
//   "STM32" : "images/tool_icon/microcomputer.png",
//   "C++" : "images/tool_icon/c++.png",
//   "RealSense" : "images/tool_icon/realsense.png",
//   "OpenCV" : "images/tool_icon/opencv.png",
//   "ROS1" : "images/tool_icon/ros.png",
//   "Raspberry Pi" : "images/tool_icon/raspberrypi.png",
// };
// const Map<String, String> otherSkillMap = {
//   "Android App" : "images/tool_icon/androidos.png",
//   "Ubuntu" : "images/tool_icon/ubuntu.png",
//   "Python3" : "images/tool_icon/python.png",
//   "Unity" : "images/tool_icon/unity.png",
//   "Pytorch" : "images/tool_icon/pytorch-icon.png",
//   "Flutter" : "images/tool_icon/flutter.png",
// };
// const String roboticsSkill = "・STM32\n"
//     "・C++\n"
//     "・RealSense\n"
//     "・OpenCV\n"
//     "・ROS1\n"
//     "・Raspberry Pi";
// const String robotSkillLevel = "-Level4\n"
//     "-Level3\n"
//     "-Level2\n"
//     "-Level2\n"
//     "-Level1\n"
//     "-Level1";
// const String otherSkill = "・Android App(Java)\n"
//     "・Ubuntu\n"
//     "・Python3\n"
//     "・Unity&ML-Agents\n"
//     "・Pytorch\n"
//     "・Flutter";
// const String otherSkillLevel = "-Level4\n"
//     "-Level3\n"
//     "-Level2\n"
//     "-Level1\n"
//     "-Level1\n"
//     "-Level1";

class AllProductSummary {
  static final ProductSummary rlObstacleAvoidanceSummary = ProductSummary(
    name: "強化学習を用いた単眼カメラ障害物回避システム",
    title: "強化学習を用いた単眼\nカメラ障害物回避システム",
    imagePath: "images/product_image/rl_obstacle_avoidance.jpg",
    skill: {
      "Python3" : "images/tool_icon/python.png",
      "Unity" : "images/tool_icon/unity.png",
      "Jetson":"images/tool_icon/nvidia.png",
    },
    about: "UnityのML-Agentsを利用し、Unity上に複数の色、形、大きさの障害物をランダムに配置したシミュレーターの中を自動車に見立てたモデルが走行します。"
        "そして学習することで、障害物に衝突しないように作ったAIです。\n"
        "このモデルは前方への単眼カメラのみで障害物を回避する行動がとれるようになっています。\n"
        "また現実世界へ適用できるようJetBotにモデルを転移させ、壁にぶつからないよう回避する行動を取ることを確認しました。",
    path: RouteManager.rlObstacleAvoidancePath,
  );

  static final ProductSummary socialDistanceVisualizationSystemSummary = ProductSummary(
    name: "ソーシャルディスタンス可視化システム",
    title: "ソーシャルディスタンス\n可視化システムの構築",
    imagePath: "images/product_image/social_distance_visualization_system.png",
    skill: {
      "C++" : "images/tool_icon/c++.png",
      "OpenCV" : "images/tool_icon/opencv.png",
      "RealSense" : "images/tool_icon/realsense.png",
    },
    about: "ソーシャルディスタンスの確保ができていない場面を街中で見たのをもとに、ソーシャルディスタンスが確保できているか可視化できるシステムを構築しました。\n"
        "RealSenseD435iとOpenCVを利用し、人間を検出した後RealSenseから得られた深度情報をもとに三次元での距離を算出、計測し人間検出の枠の色を変更することで可視化を可能にしたものです。",
    path: RouteManager.socialDistanceVisualizationSystemPath,
  );

  static final ProductSummary kosenRobocon2020Summary = ProductSummary(
    name: "高専ロボコン2020",
    imagePath: "images/product_image/kosen_robocon_2020.JPG",
    skill: {
      "C++" : "images/tool_icon/c++.png",
      "STM32" : "images/tool_icon/microcomputer.png",
    },
    about: "画像の下部のロボットの移動制御を担当しました。\n"
        "操縦はコントローラー行い、上部のロボットを載せて移動することで演技を行っていました。",
    path: RouteManager.kosenRobocon2020Path,
  );

  static final ProductSummary gakuseiRobocon2020AndroidSummary = ProductSummary(
    name: "学生ロボコン2020コンソールアプリ",
    title: "学生ロボコン2020\nコンソールアプリ",
    imagePath: "images/product_image/gakusei_robocon_2020_android.jpg",
    skill: {
      "Android App" : "images/tool_icon/androidos.png",
      "STM32" : "images/tool_icon/microcomputer.png",
    },
    about: "2020学生ロボコンのPRロボットのコンソールアプリを製作しました。\n"
        "ロボットにPCを載せると重くなり、かつ場所をとるためスマホのアプリにしました。\n"
        "GUIの中にロボットの現在の座標をフィールド図の上に表示し、見やすくしました。\n"
        "またボタンを備えることで、ロボットのモード切替や座標のリセットができるようにしました。",
    path: RouteManager.gakuseiRobocon2020AndroidPath,
  );

  static final ProductSummary gakuseiRobocon2020Summary = ProductSummary(
    name: "学生ロボコン2020",
    imagePath: "images/product_image/gakusei_robocon_2020.JPG",
    skill: {
      "C++" : "images/tool_icon/c++.png",
      "STM32" : "images/tool_icon/microcomputer.png",
    },
    about: "　ラグビーボールを所定の場所からピックアップしもう一台のロボットにパスするのと、セットされたラグビーボールをキックするロボットの自動走行周りを担当しました。\n"
        "あるポイントを起点として様々な場所へ向かえるようにすることで、柔軟な選択と精度が出せるようにしました。\n"
        "またロボットにスマホを載せることで、重く場所を取りがちなパソコンをロボットに載せずともGUIで操作と状態把握をすることができました。",
    path: RouteManager.gakuseiRobocon2020Path,
  );

  static final ProductSummary threeWheelOmuniRobotSummary = ProductSummary(
    name: "ROSを使用した3輪オムニホイールロボット",
    title: "ROSを使用した3輪\nオムニホイールロボット",
    imagePath: "images/product_image/three_wheel_omuni_robot.png",
    skill: {
      "C++" : "images/tool_icon/c++.png",
      "STM32" : "images/tool_icon/microcomputer.png",
      "ROS1" : "images/tool_icon/ros.png",
      "Ubuntu" : "images/tool_icon/ubuntu.png",
    },
    about: "ROSや機体、回路の勉強を兼ねて3輪オムニホイールロボットを製作し、ROS部分を担当しました。\n"
        "短期間だったため、製作が追いつかず苦労しました。\n"
        "ソフトウェア側としてシミュレーターで実行する所まで行いました。",
    path: RouteManager.threeWheelOmuniRobotPath,
  );

  static final ProductSummary kosenRobocon2019Summary = ProductSummary(
    name: "高専ロボコン2019",
    imagePath: "images/product_image/kosen_robocon_2019.jpg",
    skill: {
      "C++" : "images/tool_icon/c++.png",
      "STM32" : "images/tool_icon/microcomputer.png",
    },
    about: "私は洗濯物干しロボットの自動走行を担当しました。(画像は開発中だったものです)\n"
        "今回の自動走行は自分で経路計画や経路追従のコードを書き実装しました。今回の競技は状況によって様々な走行ルートを取る必要があった為、ロボットがどのモードかLEDの点灯状況から判断できるようにしました。\n"
        "自分で全てを書くのは大変でしたが、できたときは嬉しかったです。\n"
        "また、今回のロボットは重心が高くなり倒れやすくなると予想されたので、機体が傾いたら自動で非常停止が入るようにしました。",
    path: RouteManager.kosenRobocon2019Path,
  );

  static final ProductSummary gakuseiRobocon2019Summary = ProductSummary(
    name: "学生ロボコン2019",
    imagePath: "images/product_image/gakusei_robocon_2019.jpg",
    skill: {
      "C++" : "images/tool_icon/c++.png",
      "Raspberry Pi" : "images/tool_icon/raspberrypi.png",
      "RealSense" : "images/tool_icon/realsense.png",
    },
    about: "　私は四足歩行ロボットの経路計画、経路追従を担当しました。(画像は開発中だったものです)\n"
        "　今までに無い難題だったため、終始苦労しました。\n"
        "　自己位置推定はRealSenseT265を使用し、機体サイズの関係でノートPCすら載せることができなかったためRaspberry Piを載せ、メインの処理を行いました。RaspberryPi側で事前に決めてあるルートをたどるようベクトルを生成して操作するようにしていました。",
    path: RouteManager.gakuseiRobocon2019Path,
  );

  static final ProductSummary kosenRobocon2018Summary = ProductSummary(
    name: "高専ロボコン2018",
    imagePath: "images/product_image/kosen_robocon_2018.jpg",
    skill: {
      "C++" : "images/tool_icon/c++.png",
      "STM32" : "images/tool_icon/microcomputer.png",
      "ROS1" : "images/tool_icon/ros.png",
      "Ubuntu" : "images/tool_icon/ubuntu.png",
    },
    about: "ボトルフリップを行うロボットの自動走行と腕の投擲機構の制御を担当しました。\n"
        "(画像は開発中だったものです)\n"
        "自動走行は機体にノートパソコンを載せ、画像左下の突起部分の下にあるLRFから周辺情報を取得してROS1で機体を操作していました。",
    path: RouteManager.kosenRobocon2018Path,
  );

  static final ProductSummary realTimeVoiceControlVRGameSummary = ProductSummary(
    name: "リアルタイム音声操作VRゲーム開発",
    imagePath: "images/product_image/real_time_voice_control_vr_game.jpg",
    skill: {
      "C++" : "images/tool_icon/c++.png",
      "STM32" : "images/tool_icon/microcomputer.png",
      "ROS1" : "images/tool_icon/ros.png",
      "Ubuntu" : "images/tool_icon/ubuntu.png",
    },
    about: "Google音声認識を使ったVRゲームをUnityを使って開発していました。\n"
        "アプリにGoogle音声認識を内蔵し、キャラクターをリアルタイムでかつ声で操作することで臨場感のあるゲームを目指しました。",
    path: RouteManager.realTimeVoiceControlVRGamePath,
  );
}