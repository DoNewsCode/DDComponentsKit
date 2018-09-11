//
//  ExampleViewController.m
//  DDTest
//
//  Created by donews on 2018/7/28.
//  Copyright © 2018年 donews. All rights reserved.
//

#import "ExampleViewController.h"
#import "DDComponent.h"
#import "TGTitleModel.h"
//#import "TGTitlesComponent.h"
#import "TGTextComponent.h"

@interface ExampleViewController ()

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout *flowLayout;

@property (nonatomic, copy) NSArray *titleModels;
@property (nonatomic, strong) DDCollectionViewRootComponent *rootComponent;

@end

@implementation ExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.collectionView];
    [self createTitleModels];
    
    TGTextComponent *texts = [[TGTextComponent alloc] init];
    texts.navigationController = self.navigationController;
    texts.cellModels = self.titleModels;
    self.rootComponent.subComponents = @[texts];
    [self.collectionView reloadData];
    
}

- (void)createTitleModels {
    
    NSString *str0 = @"2009年纽约州第二十国会选区特别选举于2009年3月31日举行，旨在为纽约州第二十国会选区选派联邦众议员，填补前任议员陆天娜于2009年1月出任联邦参议员后出现的席位空缺。该州联邦参议员希拉里·罗德姆·克林顿此前接受总统贝拉克·奥巴马提名出任国务卿一职，州长大卫·帕特森任命陆天娜填补空缺。参选的两大党派候选人分别是民主党人、私营商户斯科特·墨菲，以及共和党人、纽约州众议院少数党领袖吉姆·泰迪斯科。第二十国会选区历来倾于保守，竞选早期的民调表明泰迪斯科胜算较大，但到了2009年2月，选举已是胜负难料。共和党将这场选举视为对总统奥巴马经济政策的全民公决，因此为泰迪斯科的竞选注入重资，还出动多位知名共和党政治领袖——如前联邦众议院议长纽特·金里奇、国会少数党领袖约翰·博纳、以及前纽约州州长乔治·保陶基为候选人摇旗呐喊。民主党则以总统奥巴马、副总统乔·拜登，以及联邦参议员陆天娜的支持来应战。选举结果非常接近，领先位置几度易主，难解难分，甚至一度出现两位候选人各得7万7225票的平局。最终打破僵局的是缺席投票。泰迪斯科起初有小幅领先，但到了4月10日，领先位置已由墨菲占据，4月23日时，墨菲的领先优势已有401票，泰迪斯科于是在次日承认落败，墨菲于4月29日宣誓就职。媒体报道认为，民主党在2008年11月的胜利，以及墨菲对经济刺激计划的明确支持，都是他赢得这场特别选举的重要原因。";
    
    NSString *str1 = @"Macrotarsomys petteri, Petter's big-footed mouse, is a Malagasy rodent. It is the largest in its genus, with a head and body length of 150 mm (5.9 in) and body mass of 105 g (3.7 oz). The upperparts are brown, darkest in the middle of the back, and the underparts are white to yellowish. The animal has long whiskers, short forelimbs, and long hindfeet. The tail ends in a prominent tuft of long, light hairs. The skull is robust and the molars are low-crowned and cuspidate. The species most resembles, and may be most closely related to, the greater big-footed mouse. The specific name, petteri, honors French zoologist François Petter for his contributions to the study of Malagasy rodents. M. petteri is now found only in southwestern Madagascar's Mikea Forest, which is threatened by human development. Subfossil records indicate that it used to be more widely distributed in southern Madagascar; climatic changes and competition with introduced species may have led to the shift in its distribution. (Full article...)";
    
    NSString *str2 = @"On 8 June 2017, the United Kingdom general election of 2017 took place, which resulted in the Conservative Party losing its parliamentary majority. The 650 parliamentary constituencies each elected one Member of Parliament (MP) to the House of Commons, otherwise known as the lower house of Parliament. Under the terms of the Fixed-term Parliaments Act 2011, an election had not been due until 7 May 2020. However, on 19 April 2017 a snap election, called by Prime Minister Theresa May, was passed by a 522-to-13 vote in the House of Commons.";
    
    NSString *str3 = @"The Conservative Party, (governing since 2010 as a senior coalition partner prior to 2015 and as a majority government thereafter) was defending a majority of 12, against the Labour Party. The official opposition is led by Jeremy Corbyn. In order to \"strengthen [her] hand in forthcoming Brexit negotiations,\"[1] May hoped to secure a larger Parliamentary majority for the Conservative Party.";
    
    NSString *str4 = @"第二十国会选区历来倾于保守，竞选早期的民调表明泰迪斯科胜算较大，但到了2009年2月，选举已是胜负难料。共和党将这场选举视为对总统奥巴马经济政策的全民公决，因此为泰迪斯科的竞选注入重资，还出动多位知名共和党政治领袖——如前联邦众议院议长纽特·金里奇、国会少数党领袖约翰·博纳、以及前纽约州州长乔治·保陶基为候选人摇旗呐喊。民主党则以总统奥巴马、副总统乔·拜登，以及联邦参议员陆天娜的支持来应战。";
    
    NSString *str5 = @"选举结果非常接近，领先位置几度易主，难解难分，甚至一度出现两位候选人各得7万7225票的平局。最终打破僵局的是缺席投票，经联邦司法部起诉后，缺席投票的接收有效期延至4月13日。泰迪斯科起初有小幅领先，但到了4月10日，领先位置已由墨菲占据，4月23日时，墨菲的领先优势已有401票，泰迪斯科于是在次日承认落败，墨菲于4月29日宣誓就职。媒体报道认为，民主党在2008年11月的胜利，以及墨菲对经济刺激计划的明确支持，都是他赢得这场特别选举的重要原因。";
    
    TGTitleModel *model0 = [[TGTitleModel alloc] initWithTitle:str0 vcClass:nil];
    TGTitleModel *model1 = [[TGTitleModel alloc] initWithTitle:str1 vcClass:nil];
    TGTitleModel *model2 = [[TGTitleModel alloc] initWithTitle:str2 vcClass:nil];
    TGTitleModel *model3 = [[TGTitleModel alloc] initWithTitle:str3 vcClass:nil];
    TGTitleModel *model4 = [[TGTitleModel alloc] initWithTitle:str4 vcClass:nil];
    TGTitleModel *model5 = [[TGTitleModel alloc] initWithTitle:str5 vcClass:nil];
    
    TGTitleModel *model6 = [[TGTitleModel alloc] initWithTitle:str3 vcClass:nil];
    TGTitleModel *model7 = [[TGTitleModel alloc] initWithTitle:str4 vcClass:nil];
    TGTitleModel *model8 = [[TGTitleModel alloc] initWithTitle:str5 vcClass:nil];
    
    self.titleModels = @[model0, model1, model2, model3, model4, model5, model6, model7, model8];
}


#pragma mark - Getters & Setters
- (UICollectionView *)collectionView {
    if (_collectionView == nil) {
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:self.flowLayout];
        _collectionView.backgroundColor = [UIColor whiteColor];
//        _collectionView.delegate = self;
//        _collectionView.dataSource = self;
    }
    return _collectionView;
}

- (UICollectionViewFlowLayout *)flowLayout {
    if (_flowLayout == nil) {
        _flowLayout = [[UICollectionViewFlowLayout alloc] init];
//        _flowLayout.itemSize = CGSizeMake(100, 100);
    }
    return _flowLayout;
}

- (DDCollectionViewRootComponent *)rootComponent {
    if (_rootComponent == nil) {
        _rootComponent = [[DDCollectionViewRootComponent alloc] initWithCollectionView:self.collectionView bind:YES];
    }
    return _rootComponent;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
