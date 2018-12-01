set names utf8;
drop database if exists tqd;
create database tqd charset=utf8;
use tqd;
create table index_navImg(
    id  int primary key auto_increment,
    img varchar(132)
);
insert into index_navImg values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACDitv7YBSiW7fCsBTDuBTj8AkBu.jpg");
insert into index_navImg values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACDjtv7YBSj0m_ODATDuBTj8AkBu.jpg");

create table index_four(
    id  int primary key auto_increment,
    img varchar(132),
    text1 varchar(32),
    text2 varchar(32)
);
insert into index_four values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAQYACCCt-7YBSijoYq_AzBkOE1Abg.png","教育年历","20年培训经验");
insert into index_four values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAQYACCDt-7YBSigrqOAATBkOE1Abg.png","收费标准","透明消费");
insert into index_four values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAQYACD-tv7YBSiW_eiOAzBkOE1Abg.png","教育团队","行业精英人才");
insert into index_four values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAQYACCAt-7YBSiooMyxAjBkOE1Abg.png","场馆区域","分布广");

create table index_two(
    id  int primary key auto_increment,
    img varchar(132),
    text1 varchar(32),
    text2 varchar(32)
);
insert into index_two values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAQYACCv6YHZBSjI997yAjBQOFBAbg.png","免费体验课程","免费体验专业跆拳道课");
insert into index_two values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAQYACCw6YHZBSj0veXBBDBQOFBAbg.png","关于我们","解更过的我们");

create table index_class(
    id  int primary key auto_increment,
    img varchar(132),
    text1 varchar(32),
    text2 varchar(32)
);
insert into index_class values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACDs7IHZBSiy94DjBDDuBTiTBEBu.jpg","少儿周末班","礼义 廉耻 忍耐 克已 百折不屈");
insert into index_class values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACDu7IHZBSiP0PWTBjDuBTiTBEBu.jpg","黑带教练班","想让您的兴趣成为终身事业吗？");
insert into index_class values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACDv7IHZBSjnioSQATDuBTiTBEBu.jpg","暑假特训班","零基础（7月10日至8月20日）");
insert into index_class values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACDx7IHZBSiIhKGiAzDuBTiTBEBu.jpg","成人晚班","18岁以上50以下");

create table ty(
     id  int primary key auto_increment,
     name varchar(5),
     phone varchar(11),
     course varchar(10),
     time  varchar(20),
     address varchar(32)
);

create table material(
     id  int primary key auto_increment,
     img varchar(128),
     text1 varchar(32),
     text2 varchar(32)
);
insert into material values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACCs8YHZBSijq9r3BzCkAzjxAUBu.jpg","跆拳道是技术与精神的双重成长！","跆拳道要求学员学习攻防的技术和提高道德水平。就像人的精神与身体有着不可分割的关系一样，跆拳道的基本技");
insert into material values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACDx7IHZBSiIhKGiAzDuBTiTBEBu.jpg","学习跆拳道的五个原则","自觉积极性原则人的自觉积极性是完成各项任务的基础和保证。在跆拳道专项身体素质训练中，同要需要发挥人的");

create table exe (
    id  int primary key auto_increment,
     img varchar(128),
     text1 varchar(32),
     text2 varchar(32)
);
insert into exe values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACCU9IHZBSjAsvPrBjDuBTjmAUBu.jpg","跆拳道各级别训练计划","礼仪廉耻，忍耐克己，百折不屈");

create table exeC (
     id  int primary key auto_increment,
     img varchar(128),
     text1 varchar(32),
     text2 varchar(32),
     text3 varchar(32)
);
insert into exeC values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACDe9YHZBSjGh_mvBDDuBTisAkBu.jpg","十级 白带","九级 白黄带","计划详情");
insert into exeC values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACDf9YHZBSicsKPRBjDuBTisAkBu.jpg","八级 黄带","null","计划详情");
insert into exeC values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACDh9YHZBSig64DDBjDuBTisAkBu.jpg","七级 黄绿带","六级 绿带","计划详情");
insert into exeC values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACDk9YHZBSjAr5qRAzDuBTisAkBu.jpg","五级 绿蓝带","四级 蓝带（棕带）","计划详情");
insert into exeC values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACDj9YHZBSiu3LFNMO4FOKwCQG4.jpg","三级 蓝红带","二级 红带","计划详情");
insert into exeC values(null,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACDm9YHZBSj46r2HBTDuBTisAkBu.jpg","一级 红黑（黑）","null","计划详情");

create table video(
    id  int primary key auto_increment,
    video varchar(128),
    text varchar(64)
);
insert into video values(null,"http://127.0.0.1:3003/img/x.mp4","青少年跆拳道初级教程");
insert into video values(null,"http://127.0.0.1:3003/img/x.mp4","跆拳道教学视频 跆拳道的三七步准备姿势");
insert into video values(null,"http://127.0.0.1:3003/img/x.mp4","跆拳道教学-外摆踢");
insert into video values(null,"http://127.0.0.1:3003/img/x.mp4","跆拳道学习视频之基础训练");
insert into video values(null,"http://127.0.0.1:3003/img/x.mp4","青少年跆拳道初级教程");
insert into video values(null,"http://127.0.0.1:3003/img/x.mp4","跆拳道教学视频 跆拳道的三七步准备姿势");
insert into video values(null,"http://127.0.0.1:3003/img/x.mp4","跆拳道教学-外摆踢");
insert into video values(null,"http://127.0.0.1:3003/img/x.mp4","跆拳道学习视频之基础训练");



create table knowledge(
     id  int primary key auto_increment,
     text1 varchar(32),
     text2 varchar(128),
     time  datetime,
     isknowledge int,
     isconsult int,
     img   varchar(128)

);
insert into knowledge values(null,"跆拳道段位与级别","跆拳道的升级与升段，不仅需要考核跆拳道的各种技术，还要审查人格、耐心、勇气、诚实等精神修养。跆拳道的",now(),1,0,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACCW8YHZBSjsg-3yBTCkAzjxAUBu.jpg");
insert into knowledge values(null,"跆拳道是技术与精神的双重成长！","跆拳道要求学员学习攻防的技术和提高道德水平。就像人的精神与身体有着不可分割的关系一样，跆拳道的基本技",now(),1,0,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACCs8YHZBSijq9r3BzCkAzjxAUBu.jpg");
insert into knowledge values(null,"学习跆拳道的五个原则","自觉积极性原则人的自觉积极性是完成各项任务的基础和保证。在跆拳道专项身体素质训练中，同要需要发挥人的",now(),0,1,"http://127.0.0.1:3003/img/AFEI_7QKEAIYACDx7IHZBSiIhKGiAzDuBTiTBEBu.jpg");

create table knowledges(
     id  int primary key auto_increment,
     title varchar(16),
     time datetime,
     num  int,
     text varchar(9999)
);
insert into knowledges values(null,"跆拳道段位与级别",now(),1,"<div>跆拳道的升级与升段，不仅需要考核跆拳道的各种技术，还要审查人格、耐心、勇气、诚实等精神修养。跆拳道的级别为10个级和9个段位。</div><div>9级为白带：白颜色，代表纯洁和洁净，代表着练习者练习跆拳道的目的是纯洁的，不是为了某些不正当的目的。同时也代表着练习者在跆拳道这一个新的领域还是一片空白，就像是一张白纸一样有待于添加内容。</div><div>8级为黄带：正如前面所介绍的那样，黄色代表大地，这个带位代表着练习者已经学习了一些入门级别的技术，就像大地一样，处在最底层，对于以后的内容的学习已经打好了基础。</div><div>7级为黄绿带：黄色代表大地，绿色代表大地上生长的草木，这个带位一半黄色一半绿色，这就代表着练习者相对于上一个带位而言已经有了一定的进步，在原来的基础上又学习了新的内容，向更高的层次又迈进了一步。</div><div>6级为绿带：绿色代表大地上生长的草木，相对于上一个级别而言，在这个带位的练习者已经学习了初级基础腿法和最基础的品势，水平已经提上了一个档次，这个带位是全绿色，这意味着练习者不再是只会练习初级内容的初学者了，现在已经可以尝试着学习中级内容了。</div><div>5级为绿蓝带：正如前面所介绍的那样，绿色代表大地上生长的草木，那么蓝色就代表蓝天，这个带位一半绿色一半蓝色，它的含义是练习都在绿带的基础上又有了一定的进步，就是说大地上生长的草木又长高了，又向上面的蓝色接近了，这个就可以理解为练习者的水平又有了提高。</div><div>4级为蓝带：蓝色代表蓝天，这个带位是全部蓝色的，这就代表着大地上的草木已经长到了一定高度，已经到达蓝色的高度了，那么，这个时候练习者的水平已经提高到了嘴的水平，已经具备参加实战的条件了。</div><div>3级为蓝红带：如果蓝色代表蓝天的话，那么红色就代表天上的太阳，太阳代表着火热和激情，代红色也代表着威胁和危险，这个带位一半蓝色一半红色，它的含义是练习都已经开始接触高级水平内容，已经有一些攻击能力了。</div><div>2级为红带：正如前面所说的那样，红色代表太阳，代表着火热与激情，但同时也代表着危险与威胁，这个带位水平的练习都已经具备一定的攻击能力，当别人看到这个带位的时候就得小心谨慎，同时对于练习者自己而言，这同样也是警告，因为对于这个带位的练习者而言，往往会产生自满和好斗的心理，认为自己已经学会了高级内容，误认为自己的水平已经很不错了，往往会出去显耀自己的实战能力如何如何。</div><div>因此，这个带位的练习应该在练习技术动作的同时也得加强精神思想方向的修养，以跆拳道精神为工具来约束自己的言行举止，不可惹事生非、以强歁弱。</div><div>1级为红黑带：这个带位一半红色一半黑色，有人也把这个带叫做“半段”，因为下一个带就不是级别了，而是段位，所以有人把这个带位叫做“半段”。代表着练习都如果能通过刻苦的练习的话，有可能成为黑带练习者而进入全新的练习阶段。</div><div>黑带：黑色代表着宇宙，宇宙是无边无际的（最起码对于现在的科学水平来说是无边无际的），这代表着练习者以后的练习也是无止境的，因为这不仅仅是对于身体的锻炼，还是对于道德和思想上的磨炼。同时，黑色代表着黑暗与邪恶，这就时时刻刻提醒着练习者不要惧怕黑暗势力，要勇于和一切不正当的行为和人作斗争并作一个正直、正派的人。</div>");
insert into knowledges values(null,"跆拳道是技术与精神的双重成长！",now(),123,"<div>跆拳道要求学员学习攻防的技术和提高道德水平。就像人的精神与身体有着不可分割的关系一样，跆拳道的基本技术与道德修养有着密切的关系。如果学习跆拳道的人不仅练技术而且修道德，那么这种人懂得谦虚，知道羞耻。诚实勇敢，有礼有节，自强不息。因此，技术和道德境界将会不断提高。而且，这种人具有应该走的道，所以能够享受美满的道德生活。</div><div>学习跆拳道的人要懂得忍。忍使人意志坚强，宽宏大量。人生不是一帆风顺的，困难和烦恼是生来具有的。碰到困难要发扬百折不屈的精神，千方百计地解决困难。要忍得住，挺过去。否则，将前功尽弃，一事无成。有道是有志者事竟成。忍能保持心平气和，克服心烦意乱。所以能辨别是非，做到心中有数。假如受人打击迫害，首先要保持镇定，不要轻举妄动，要顾全大局，不要冤冤相报。否则，害人害己，是非不断。</div><div>学习跆拳道的人要懂得诚。诚实的人敢于承认自己的错误，不说假话。承认错误是认识错误的过程，是改正错误的机会。正直诚实的人知道羞耻，能够把握自己。所以，不会明知故犯，不会丢面子。诚者有信，有信用就能得到帮助。否则，假话连篇，不能改过迁善。自欺欺人，不知羞耻。失去信用，得不到帮助。</div><div>学习跆拳道的人要懂得仁。仁是修养，慈悲为怀。要大公无私，不要贪图功名。当社会或他人需要帮助时，要义无反顾地贡献自己的力量。但是，做好事也要有智慧。要有礼有节，公平正义，恰到好处不能过度。更重要的是不要等待回报，要心甘情愿。这样就能活的潇洒。否则，就会活的很累。众所周知，能量是守恒的。讲的话，做的事也是某种形式的能量释放。所以，一定有能量的回报。请不要说坏话，做坏事。不然，将有坏报。</div><div>学习跆拳道的人要懂得敬，知道尊敬别人。敬则能使人保持醒觉状态。这种醒觉的状态使人谦虚谨慎，戒骄戒躁。使人不耻下问，精益求精。丰富人的知识，能应付各种事物。否则，不能保持醒觉，自高自大，学识浅薄，就不能应付任何事物。因此，学习跆拳道的人要尊敬自己周围的人，虚心向他人学习，要经常保持清醒的头脑。</div><div>道德修养，不仅对于学习跆拳道的人，而且对于所有的人都是一个理想的目标。道德修养是无止境的，要知道天外有天，人外人。能否达到这个理想并不重要，最重要的是向着这个目标不断努力的精神。</div>");
insert into knowledges values(null,"学习跆拳道的五个原则",now(),120,"<span>自觉积极性原则</span><div>人的自觉积极性是完成各项任务的基础和保证。在跆拳道专项身体素质训练中，同要需要发挥人的自觉积极性，只有调动起练习者的积极性，才能达到训练目的。因此，自觉积极性原则对明确训练目的，端正训练的态度以及自学苦练，有着重要作用，运动员积极思维开动脑筋，把认真练习的想法变成为自觉行动的基本原则。</div><span>从实际出发原则</span><div>根据自己或队员的实际情况切实合理地选择训练方法和制定学习目标，在原有身体素质的基础上，利用有效合理的练习手段和运动量安排.进行专项身体素质训练。如果要求过高，内容难度过大，选择训练方法不当或运动负荷不合实际，就会超出自己或队员的实际水平和承受能力，这样不仅难于完成训练任务，反而会产生不良后果，甚至会出现严重的伤害事故。相反，如果运动量强度太小或要求过低，则达不到身体训练应有的效果。因此，在进行专项身体素质训练前，一定要从实际情况出发，并制定切实合理的训练计划，然后再进行训练。</div><div>全面发展原则</div><div>跆拳道竞技需要综合全面的专项身体素质，在进行专项身体素质训练时，要从全面发展的原则出发，从不同的素质内容、训练方法和手段着手，使身体的各个部位、器官和系统的机能，以及身体和各种素质得到全面的发展由于人体是在大脑统一指挥下的有机整体，身体各部位、各系统的机能和各种素质之间都有密切的联系，而且相互制约。因此，如果训练安排得当，协调得好.训练中人体各部分就能够相互促进，共同提高，使身体素质得到平衡发展：此外，训练中要注意优势素质和困难素质的协调发展，有的人有天生的优势素质.也有相对薄弱的素质，训练时要从全面的原则出发，多进行薄弱素质的训练，达到全面协调发展的目的。</div><span>合理安排运动负荷原则</span><div>训练中运动负荷的合理与否直接影响着身体的适应能力。运动负荷过大，会给人体造成过大的生理负担，甚至会使人难以承受而出现伤害事故。运动负荷过小，又达不到训练要求，收不到预期的效果。合理安排运动负荷，就是在进行专项身体素质训练时，根据自己或队员的身体素质基础，结合训练的任务和目的以及跆拳道竞技的具体要求，合理安排运动负荷，使训练负荷既能被身体适应，又能有效刺激人的机体，达到提高专项素质的目的。此外，还要根据训练的水平、阶段、任务安排好训练和休息，以便更好地发展专项身体素质。</div><span>具体问题具体对待原则</span><div>专项身体素质训练要求具有实效，而实效的获得是通过具体的训练完成的。因此针对训练中的具体问题，要用具体的方法去解决。专项身体训练要善始善终，训练前充分做好准备活动，训练后一定要放松肌肉，以保证身体的适应和快速恢复。同时。注意训练中的礼节教育，做到以礼始，以礼终。</div>");