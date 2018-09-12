//
//  TGHeaderFooterViewController.m
//  DDTest
//
//  Created by donews on 2018/7/30.
//  Copyright © 2018年 donews. All rights reserved.
//

#import "TGHeaderFooterViewController.h"
#import "DDComponent.h"
#import "TGTitlesComponent.h"
#import "TGTextComponent.h"
#import "TGImagesComponent.h"
#import "TGHeaderComponent.h"
#import "TGFooterComponent.h"
#import "TGTitleModel.h"
#import "TGImageModel.h"

@interface TGHeaderFooterViewController ()

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) UICollectionViewFlowLayout *flowLayout;

@property (nonatomic, strong) DDCollectionViewRootComponent *rootComponent;
@property (nonatomic, strong) TGHeaderComponent *headerComponent;
@property (nonatomic, strong) TGFooterComponent *footerComponent;

@property (nonatomic, strong) TGHeaderComponent *titleHeaderComponent;
@property (nonatomic, strong) TGFooterComponent *titleFooterComponent;

@property (nonatomic, copy) NSArray *titleModels;
@property (nonatomic, copy) NSArray *textModels;
@property (nonatomic, copy) NSArray *imageModels;

@end

@implementation TGHeaderFooterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.collectionView];
    [self createModels];
    
    // 标题组件
    TGTitlesComponent *titlesComponent = [[TGTitlesComponent alloc] init];
    titlesComponent.headerComponent = self.titleHeaderComponent;
    titlesComponent.footerComponent = self.titleFooterComponent;
    titlesComponent.cellModels = self.titleModels;
    
    // 文本组件
    TGTextComponent *textComponent = [[TGTextComponent alloc] init];
    textComponent.headerComponent = self.headerComponent;
    textComponent.footerComponent = self.footerComponent;
    textComponent.cellModels  = self.textModels;
    
    // 图片组件
    TGImagesComponent *imagesComponent = [[TGImagesComponent alloc] init];
    imagesComponent.headerComponent = self.headerComponent;
    imagesComponent.footerComponent = self.footerComponent;
    imagesComponent.images = self.imageModels;
    
    self.rootComponent.subComponents = @[titlesComponent, imagesComponent, textComponent];
    [self.collectionView reloadData];
    
}

- (void)createModels{
    
    NSString *str0 = @"2009年纽约州第二十国会选区特别选举于2009年3月31日举行，旨在为纽约州第二十国会选区选派联邦众议员，填补前任议员陆天娜于2009年1月出任联邦参议员后出现的席位空缺。该州联邦参议员希拉里·罗德姆·克林顿此前接受总统贝拉克·奥巴马提名出任国务卿一职，州长大卫·帕特森任命陆天娜填补空缺。参选的两大党派候选人分别是民主党人、私营商户斯科特·墨菲，以及共和党人、纽约州众议院少数党领袖吉姆·泰迪斯科。第二十国会选区历来倾于保守，竞选早期的民调表明泰迪斯科胜算较大，但到了2009年2月，选举已是胜负难料。共和党将这场选举视为对总统奥巴马经济政策的全民公决，因此为泰迪斯科的竞选注入重资，还出动多位知名共和党政治领袖——如前联邦众议院议长纽特·金里奇、国会少数党领袖约翰·博纳、以及前纽约州州长乔治·保陶基为候选人摇旗呐喊。民主党则以总统奥巴马、副总统乔·拜登，以及联邦参议员陆天娜的支持来应战。选举结果非常接近，领先位置几度易主，难解难分，甚至一度出现两位候选人各得7万7225票的平局。最终打破僵局的是缺席投票。泰迪斯科起初有小幅领先，但到了4月10日，领先位置已由墨菲占据，4月23日时，墨菲的领先优势已有401票，泰迪斯科于是在次日承认落败，墨菲于4月29日宣誓就职。媒体报道认为，民主党在2008年11月的胜利，以及墨菲对经济刺激计划的明确支持，都是他赢得这场特别选举的重要原因。";
    
    NSString *str1 = @"Macrotarsomys petteri, Petter's big-footed mouse, is a Malagasy rodent. It is the largest in its genus, with a head and body length of 150 mm (5.9 in) and body mass of 105 g (3.7 oz). The upperparts are brown, darkest in the middle of the back, and the underparts are white to yellowish. The animal has long whiskers, short forelimbs, and long hindfeet. The tail ends in a prominent tuft of long, light hairs. The skull is robust and the molars are low-crowned and cuspidate. The species most resembles, and may be most closely related to, the greater big-footed mouse. The specific name, petteri, honors French zoologist François Petter for his contributions to the study of Malagasy rodents. M. petteri is now found only in southwestern Madagascar's Mikea Forest, which is threatened by human development. Subfossil records indicate that it used to be more widely distributed in southern Madagascar; climatic changes and competition with introduced species may have led to the shift in its distribution. (Full article...)";
    
    NSString *str2 = @"On 8 June 2017, the United Kingdom general election of 2017 took place, which resulted in the Conservative Party losing its parliamentary majority. The 650 parliamentary constituencies each elected one Member of Parliament (MP) to the House of Commons, otherwise known as the lower house of Parliament. Under the terms of the Fixed-term Parliaments Act 2011, an election had not been due until 7 May 2020. However, on 19 April 2017 a snap election, called by Prime Minister Theresa May, was passed by a 522-to-13 vote in the House of Commons.";
    
    NSString *str3 = @"The Conservative Party, (governing since 2010 as a senior coalition partner prior to 2015 and as a majority government thereafter) was defending a majority of 12, against the Labour Party. The official opposition is led by Jeremy Corbyn. In order to \"strengthen [her] hand in forthcoming Brexit negotiations,\"[1] May hoped to secure a larger Parliamentary majority for the Conservative Party.";
    // 标题
    TGTitleModel *model0 = [[TGTitleModel alloc] initWithTitle:str0 vcClass:nil];
    self.titleModels = @[model0];
    
    // 文本
    TGTitleModel *model1 = [[TGTitleModel alloc] initWithTitle:str1 vcClass:nil];
    TGTitleModel *model2 = [[TGTitleModel alloc] initWithTitle:str2 vcClass:nil];
    TGTitleModel *model3 = [[TGTitleModel alloc] initWithTitle:str3 vcClass:nil];
    
    self.textModels = @[model1, model2, model3];
    
    TGImageModel *model4 = [[TGImageModel alloc] initWithImageName:@"111" vcClass:nil];
    TGImageModel *model5 = [[TGImageModel alloc] initWithImageName:@"111" vcClass:nil];
    TGImageModel *model6 = [[TGImageModel alloc] initWithImageName:@"111" vcClass:nil];
    TGImageModel *model7 = [[TGImageModel alloc] initWithImageName:@"111" vcClass:nil];
    TGImageModel *model8 = [[TGImageModel alloc] initWithImageName:@"111" vcClass:nil];
    
    self.imageModels = @[model4, model5, model6, model7, model8];
    
}

#pragma mark - Getters & Setters
- (UICollectionView *)collectionView {
    if (_collectionView == nil) {
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:self.flowLayout];
        _collectionView.backgroundColor = [UIColor whiteColor];
    }
    return _collectionView;
}

- (UICollectionViewFlowLayout *)flowLayout {
    if (_flowLayout == nil) {
        _flowLayout = [[UICollectionViewFlowLayout alloc] init];
    }
    return _flowLayout;
}

- (DDCollectionViewRootComponent *)rootComponent {
    if (_rootComponent == nil) {
        _rootComponent = [[DDCollectionViewRootComponent alloc] initWithCollectionView:self.collectionView bind:YES];
    }
    return _rootComponent;
}

- (TGHeaderComponent *)headerComponent {
    if (_headerComponent == nil) {
        _headerComponent = [[TGHeaderComponent alloc] init];
        _headerComponent.text = @"IMAGE HEADER";
    }
    return _headerComponent;
}

- (TGFooterComponent *)footerComponent {
    if (_footerComponent == nil) {
        _footerComponent = [[TGFooterComponent alloc] init];
        _footerComponent.text = @"IMAGE TOOTER";
    }
    return _footerComponent;
}

- (TGHeaderComponent *)titleHeaderComponent {
    if (_titleHeaderComponent == nil) {
        _titleHeaderComponent = [[TGHeaderComponent alloc] init];
        _titleHeaderComponent.text = @"TITLE HEADER";
    }
    return _titleHeaderComponent;
}

- (TGFooterComponent *)titleFooterComponent {
    if (_titleFooterComponent == nil) {
        _titleFooterComponent = [[TGFooterComponent alloc] init];
        _titleFooterComponent.text = @"Title TOOTER";
    }
    return _titleFooterComponent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
