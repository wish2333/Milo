#import "template.typ": *

// 主题颜色
#let theme-color = rgb("#26267d")
#let icon = icon.with(fill: theme-color)

// 设置图标, 来源: https://fontawesome.com/icons/
#let fa-award = icon("icons/fa-award.svg")
#let fa-building-columns = icon("icons/fa-building-columns.svg")
#let fa-code = icon("icons/fa-code.svg")
#let fa-envelope = icon("icons/fa-envelope.svg")
#let fa-github = icon("icons/fa-github.svg")
#let fa-graduation-cap = icon("icons/fa-graduation-cap.svg")
#let fa-linux = icon("icons/fa-linux.svg")
#let fa-phone = icon("icons/fa-phone.svg")
#let fa-windows = icon("icons/fa-windows.svg")
#let fa-wrench = icon("icons/fa-wrench.svg")
#let fa-work = icon("icons/fa-work.svg")

// 设置简历选项与头部
#show: resume.with(
  // 字体和基准大小
  size: 9.5pt,
  // 标题颜色
  theme-color: theme-color,
  // 控制纸张的边距
  margin: (
    top: 1.5cm,
    bottom: 1.5cm,
    left: 2cm,
    right: 2cm,
  ),

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消header-center的注释
  //header-center: true,

  // 头像设置
  photograph: "icon.jpg",
  photograph-width: 6em,
  gutter-width: 2em,
)[
  = 黄淼森
  #h(0em)
  #info(
    color: theme-color,
    (
      icon: fa-phone,
      content: " 18977528003",
    ),
    (
      icon: fa-building-columns,
      content: " 香港中文大学",
    ),
    (
      icon: fa-graduation-cap,
      content: " 硕士",
    ),
    (
      icon: fa-envelope,
      content: " wishtxfs@163.com",
      link: "mailto:wishtxfs@163.com",
    ),
    (
      icon: fa-github,
      content: " wish2333",
      link: "https://github.com/wish2333",
    ),
  )
][
  #h(0em)

  香港中文大学社会学硕士在读，中国传媒大学传播学本科。有扎实的社会科学基础，擅长数据分析，掌握基础Python编程，将AI技术应用在实践中。积极践行开源精神，在GitHub上分享项目。
]


== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 8%)[
  2026.11
  
  2025.09
][
  *香港中文大学* · 社会学院 · 社会学 · 文学硕士

  - 主干课程：社会学与现代生活、社会研究方法、社会学理论视角、社会研究统计、全球化的挑战与应对
]

#v(0em)

#sidebar(with-line: true, side-width: 8%)[
  2025.07

  2021.09
][
  *中国传媒大学* · 新闻学院 · 传播学 · 文学学士

  - 校毕业生三好学生、优秀毕业论文；23-24学年校三好学生、校级三等奖学金、学术科研竞赛奖学金

  - 主干课程：传播学概论、基础统计学、传播研究方法、传播政治经济学、实践：社会调查
]


== #fa-work 实习经历

#sidebar(with-line: true, side-width: 8%)[
  长期合作
][
  *方案支持* · @ 北京京师勤思教育科技有限公司

  - 探索智能化服务：用 Coze 开发以人工智能技术为依托的智能客服、辅导老师、口语老师、全自动图文生产流程，降本增效，提升用户承接效率和质量。
  - 制作与维护官网网站：通过 Linux 服务器管理维护网站，利用 HTML、CSS、JavaScript 等网页技术制作官网和智能化服务的前端界面，为用户了解和使用业务提供窗口。
  - 开发效率软件：Python 和 FFmpeg 作为后端，PySide6 作为前端，开发剪辑效率软件，以优化制作流程，视频产能翻倍；通过开源项目整合，开发 AI 数字人本地生产流程。
]

#sidebar(with-line: true, side-width: 8%)[
  2025.12
  
  2025.10
][
  *咨询培训实习生* · @ 深圳市远界管理咨询有限公司

  - 撰写咨询规划：依据客户网公司的培训需求，负责提炼核心要点并制定《培训资源开发清单》，为后续定制化培训资源的开发奠定明确方向与实施标准。
  - 统筹培训制作：基于开发清单，主导并协调涵盖安规解读视频、事故警示视频、管理人员长图文的共计75项多媒体教学资源的打样、制作与最终交付，在一个月内实现所有资源的高质量产出。
]

#sidebar(with-line: true, side-width: 8%)[
  2025.01
  
  2024.10
][
  *企业咨询部实习生* · @ 北京人民在线网络有限公司

  - 为国央企客户提供舆情监测报告，并为项目微信公众号撰写舆情热点分析报告。
  - 负责通讯、食品和医药行业舆情的数据处理工作。
]

== #fa-code 个人项目

- #link("https://github.com/wish2333/SocialSimuLLM",[ *SocialSimuLLM* ],): (Python) 毕业作品，基于 generative-agent 框架开发，用于大模型驱动的社会仿真实验。
- #link("https://github.com/wish2333/VidExtConcat",[ *VidExtConcat* ],): (Python, PySide6) 基于 FFmpeg 的视频批处理 GUI 工具，整合有滤镜特效、智能剪辑等功能。


== #fa-award 校园经历

- 2024.06 - 2024.09: 性别与经济舆情在时间序列上的主题演化研究（独立作者，第30届AMIC年会发表）
- 2022.06 - 2024.09: 在文旅传播背景下探索文化广场赋能乡村振兴研究（独立作者，第30届AMIC年会发表）
- 2021.10 - 2023.05: 中国传媒大学ECHO配音社（社团有声剧、广播剧、舞台剧编剧、配音、录音和后期制作）
- 2021.09 - 2023.09: 中国传媒大学社团联合会（宣传部视频组委员，负责视频拍摄、剪辑，现场转播、协调）
- 2021.09 - 2022.06: 中国传媒大学广播台 Radio CUC（文艺部干事，负责组织策划校内文艺活动）

== #fa-wrench 技能和语言

#sidebar(with-line: false, side-width: 8%)[
  *数据分析*

  *视频后期*

  *音频后期*

  *编程开发*

  *语言能力*
][
  Excel ｜ SPSS ｜ Tableau ｜ SQL ｜ Jamovi ｜

  Premier ｜ After Effect ｜ 剪映专业版 ｜

  Audition ｜ Reaper ｜ Studio One ｜

  Python ｜ HTML ｜ CSS ｜ JavaScript ｜ Linux ｜

  *英语* - 雅思6.5, 六级533 ｜
  *粤语* - 母语（勾漏片区） ｜
]

#place(
  bottom + right,
  dx: 0em,
  dy: -1em,
  {
    image("qrcode.png", width: 8em)
    v(-1em)
    align(center)[在线简历及作品集]
  }
)
