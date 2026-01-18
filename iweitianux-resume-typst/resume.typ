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
  size: 8pt,
  // 标题颜色
  theme-color: theme-color,
  // 控制纸张的边距
  margin: (
    top: 1.5cm,
    bottom: 1cm,
    left: 2cm,
    right: 2cm,
  ),

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消header-center的注释
  //header-center: true,

  // 头像设置
  photograph: "icon.jpg",
  photograph-width: 6.5em,
  gutter-width: 3em,
)[
  = 黄淼森

  #info(
    color: theme-color,
    (
      icon: fa-phone,
      content: "189-7752-8003",
    ),
    (
      icon: fa-building-columns,
      content: "香港中文大学",
    ),
    (
      icon: fa-graduation-cap,
      content: "社会学硕士",
    ),
    (
      icon: fa-envelope,
      content: "wishtxfs@163.com",
      link: "mailto:wishtxfs@163.com",
    ),
    (
      icon: fa-github,
      content: "wish2333",
      link: "https://github.com/wish2333",
    ),
  )
][
  #h(0em)

  香港中文大学社会学硕士在读，中国传媒大学传播学本科。有扎实的社会科学基础，擅长数据分析，熟练掌握 Python 语言编程，热衷于将 AI 技术应用在实践中。积极践行开源精神，在GitHub上分享项目。
]


== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 16%)[
  2025.09 - 2026.11
][
  *香港中文大学* · 社会科学学院 · 社会学 · 文学硕士
]

#v(0em)

#sidebar(with-line: true, side-width: 16%)[
  2021.09 - 2025.07
][
  *中国传媒大学* · 新闻学院 · 传播学 · 文学学士

  2023-2024学年获校三好学生、校级三等奖学金、学术科研竞赛单项奖学金
]


== #fa-work 实习经历

#item(
  [ *企业咨询部实习生* @ 北京人民在线网络有限公司 ],
  [],
  date[ 2024.10 – 2025.01 ],
)

- 为国央企客户提供舆情监测报告，并为项目微信公众号撰写舆情热点分析报告
- 负责通讯、食品和医药行业舆情的数据处理工作

#v(0em)

#item(
  [ *销售部实习生* @ 北京京师勤思教育科技有限公司 ],
  [],
  date[ 2023.10 – 2024.10 ],
)

- 探索智能化服务：用 Coze 开发以人工智能技术为依托的智能客服、辅导老师、口语老师、全自动图文生产流程，降本增效，提升用户承接效率和质量
- 制作与维护官网网站：通过 Linux 服务器管理维护网站，利用 HTML、CSS、JavaScript 等网页技术制作官网和智能化服务的前端界面，为用户了解和使用业务提供窗口
- 开发效率软件：Python 和 FFmpeg 作为后端，PySide6 作为前端，开发剪辑效率软件，以优化制作流程，视频产能翻倍；通过开源项目整合，开发 AI 数字人本地生产流程

#v(1em)

#item(
  [ *后期部顾问* @ 蚌埠新上禾风文化传媒（初创公司） ],
  [],
  date[ 2023.06 – 2023.08 ],
)

- 制作剧本杀 CD《四十二年冬》、《恶贯满盈》音频后期、音效设计以及后续宣传物料
- 制定后期制作流程手册，提升制作效率和成品质量


== #fa-code 个人项目

#item(
  link(
    "https://github.com/wish2333/SocialSimuLLM",
    [ *SocialSimuLLM* ],
  ),
  [ *毕业作品* ],
  date[ Python ],
)

基于 generative-agent 框架开发，用于大模型驱动的社会仿真实验

#v(1em)

#item(
  link(
    "https://github.com/wish2333/VidExtConcat",
    [ *VidExtConcat* ],
  ),
  [ *个人项目* ],
  date[ Python, PySide6 ],
)

基于 FFmpeg 的视频批处理 GUI 工具，整合有滤镜特效、智能剪辑等功能


== #fa-award 校园经历

#item(
  [ *性别与经济舆情在时间序列上的主题演化研究* ],
  [],
  date[ 2024.06 – 2024.09 ],
)

独立作者，第30届AMIC年会发表

#item(
  [ *在文旅传播背景下探索文化广场赋能乡村振兴研究* ],
  [],
  date[ 2022.06 – 2024.09 ],
)

独立作者，第30届AMIC年会发表

#item(
  [ *北京定福庄社区社会不平等现象研究* ],
  [ *项目负责人* ],
  date[ 2023.10 – 2023.12 ],
)

指导老师：文春英

#item(
  [ *中国传媒大学ECHO配音社* ],
  [],
  date[ 2021.10 – 2023.05 ],
)

社团有声剧、广播剧、舞台剧编剧、配音、录音和后期制作

#item(
  [ *中国传媒大学社团联合会* ],
  [ *宣传部视频组委员* ],
  date[ 2021.09 – 2023.09 ],
)

负责视频拍摄、剪辑，现场转播、协调


== #fa-wrench 技能和语言

#sidebar(with-line: false, side-width: 20%)[
  *数据分析*

  *视频后期*

  *音频后期*

  *编程开发*

  *语言能力*
][
  Excel, SPSS, Tableau, SQL, Jamovi

  Premiere, After Effect, 剪映专业版

  Audition, Reaper, Studio One

  Python, HTML, CSS, JavaScript, Linux

  *英语* --- 雅思6.5（读写:优良，听说:日常交流）
  *勾漏片区粤语* --- 母语
]
