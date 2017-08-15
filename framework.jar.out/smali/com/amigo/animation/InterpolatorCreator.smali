.class public Lcom/amigo/animation/InterpolatorCreator;
.super Ljava/lang/Object;
.source "InterpolatorCreator.java"


# static fields
.field private static mInterpolatorCreator:Lcom/amigo/animation/InterpolatorCreator;


# instance fields
.field private mCoef:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 15

    .prologue
    const/16 v14, 0xa

    const/4 v13, 0x4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/amigo/animation/InterpolatorCreator;->mCoef:Ljava/util/Map;

    .line 21
    new-array v0, v13, [D

    fill-array-data v0, :array_0

    .line 24
    .local v0, "A1InCubic":[D
    iget-object v11, p0, Lcom/amigo/animation/InterpolatorCreator;->mCoef:Ljava/util/Map;

    const-string v12, "A1-InCubic"

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const/16 v11, 0xd

    new-array v1, v11, [D

    fill-array-data v1, :array_1

    .line 34
    .local v1, "A2InCirc":[D
    iget-object v11, p0, Lcom/amigo/animation/InterpolatorCreator;->mCoef:Ljava/util/Map;

    const-string v12, "A2-InCirc"

    invoke-interface {v11, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const/4 v11, 0x5

    new-array v2, v11, [D

    fill-array-data v2, :array_2

    .line 40
    .local v2, "B1OutCubic":[D
    iget-object v11, p0, Lcom/amigo/animation/InterpolatorCreator;->mCoef:Ljava/util/Map;

    const-string v12, "B1-OutCubic"

    invoke-interface {v11, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const/4 v11, 0x7

    new-array v3, v11, [D

    fill-array-data v3, :array_3

    .line 47
    .local v3, "B2OutCirc":[D
    iget-object v11, p0, Lcom/amigo/animation/InterpolatorCreator;->mCoef:Ljava/util/Map;

    const-string v12, "B2-OutCirc"

    invoke-interface {v11, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-array v4, v14, [D

    fill-array-data v4, :array_4

    .line 55
    .local v4, "C1InOutCubict":[D
    iget-object v11, p0, Lcom/amigo/animation/InterpolatorCreator;->mCoef:Ljava/util/Map;

    const-string v12, "C1-InOutCubict"

    invoke-interface {v11, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const/16 v11, 0x8

    new-array v5, v11, [D

    fill-array-data v5, :array_5

    .line 62
    .local v5, "C2InOutCustom1":[D
    iget-object v11, p0, Lcom/amigo/animation/InterpolatorCreator;->mCoef:Ljava/util/Map;

    const-string v12, "C2-InOutCustom1"

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-array v6, v14, [D

    fill-array-data v6, :array_6

    .line 70
    .local v6, "C3InOutCustom2":[D
    iget-object v11, p0, Lcom/amigo/animation/InterpolatorCreator;->mCoef:Ljava/util/Map;

    const-string v12, "C3-InOutCustom2"

    invoke-interface {v11, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-array v7, v13, [D

    fill-array-data v7, :array_7

    .line 75
    .local v7, "D1InBack":[D
    iget-object v11, p0, Lcom/amigo/animation/InterpolatorCreator;->mCoef:Ljava/util/Map;

    const-string v12, "D1-InBack"

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-array v8, v13, [D

    fill-array-data v8, :array_8

    .line 80
    .local v8, "D2OutBack":[D
    iget-object v11, p0, Lcom/amigo/animation/InterpolatorCreator;->mCoef:Ljava/util/Map;

    const-string v12, "D2-OutBack"

    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/16 v11, 0xe

    new-array v9, v11, [D

    fill-array-data v9, :array_9

    .line 90
    .local v9, "D3InOutBack":[D
    iget-object v11, p0, Lcom/amigo/animation/InterpolatorCreator;->mCoef:Ljava/util/Map;

    const-string v12, "D3-InOutBack"

    invoke-interface {v11, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/16 v11, 0xb

    new-array v10, v11, [D

    fill-array-data v10, :array_a

    .line 99
    .local v10, "E1OutElastic":[D
    iget-object v11, p0, Lcom/amigo/animation/InterpolatorCreator;->mCoef:Ljava/util/Map;

    const-string v12, "E1-OutElastic"

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void

    .line 21
    :array_0
    .array-data 8
        0x3ff02733c3c3931eL    # 1.009570851042731
        -0x40563fb57f0eb6a5L    # -0.0502951891327423
        0x3fa2b7688cdbd40cL    # 0.03655554503885847
        -0x40ace00c6977bc81L    # -0.001167285803721024
    .end array-data

    .line 26
    :array_1
    .array-data 8
        0x40d179c616c528b5L    # 17895.09513977981
        -0x3f07331e1d2c854eL    # -101582.1178774636
        0x410ec60f040230f3L    # 252097.8769573044
        -0x3eea1480c7d63737L    # -359135.8048468945
        0x4113c9f85c82d03cL    # 324222.0903427636
        -0x3ef869c48ebd52b5L    # -193223.4303029574
        0x40f2c03472d160cbL    # 76803.27803170976
        -0x3f2c5cffd576553bL    # -20108.00259629895
        0x40aa21d7a501786cL    # 3344.921180768919
        -0x3f8b5c418d031763L    # -330.2339963797802
        0x4031a590112440f4L    # 17.64672953734494
        -0x4029ebcd16840503L    # -0.3449828415031531
        0x3f6375e640def1cbL    # 0.00237555476539184
    .end array-data

    .line 36
    :array_2
    .array-data 8
        -0x402a83f21a5465c9L    # -0.3356966727136838
        0x3ffb134d276f1000L    # 1.692212251699857
        -0x3ff49b51c4da6042L    # -3.424160444341367
        0x40087c04ada54b99L    # 3.060555798155701
        0x3f6f960c01139912L    # 0.003855727620805224
    .end array-data

    .line 42
    :array_3
    .array-data 8
        -0x3fcb3f9ced9e1b5dL    # -20.75151171579331
        0x40516aaa2f169a2aL    # 69.66663720328566
        -0x3fa8efe45971e876L    # -92.25168765903632
        0x404eb6ba19b3829aL    # 61.42755433335442
        -0x3fc99ce35144b458L    # -22.38715641091008
        0x4014cab5a0f4a7aaL    # 5.197958483631661
        0x3fb6e3946f81a383L    # 0.08941009256672143
    .end array-data

    .line 49
    :array_4
    .array-data 8
        0x40840d149a072516L    # 641.6350594099229
        -0x3f5923acf80dcad3L    # -2926.162169999114
        0x40b569eef9d86356L    # 5481.933499836208
        -0x3f4ad5626de173b9L    # -5418.615510854003
        0x40a7a7fd7cb685b3L    # 3027.995092109509
        -0x3f71eaf24f3eecf9L    # -962.6316847881252
        0x40654db5328e1dacL    # 170.4283688331319
        -0x3fd3c11c41434e9fL    # -14.12283130696659
        0x3fe178cef15762fdL    # 0.5459971154878925
        -0x409263604510c303L    # -0.003614723179886091
    .end array-data

    .line 57
    :array_5
    .array-data 8
        0x403af09feadc142bL    # 26.9399401461889
        -0x3fab53513fe5f338L    # -82.69816591781557
        0x4054c3e8a7f815c6L    # 83.06107520319992
        -0x3fd3cc527200350dL    # -14.10093349215956
        -0x3fc4b177e3fb6ca4L    # -27.3067643653079
        0x402fc9a0c804b6f6L    # 15.89380478913834
        -0x40168e55e1dc793eL    # -0.7951250637672376
        0x3f8881dee0eee106L    # 0.01196645854894075
    .end array-data

    .line 64
    :array_6
    .array-data 8
        -0x3f7a3e6d9a65b3beL    # -696.1964828543207
        0x40aaf0ee6645c87eL    # 3448.465624027943
        -0x3f439b5a7189baf1L    # -7268.646705047474
        0x40c095ca6a36baecL    # 8491.581366387625
        -0x3f48953f569ab4a3L    # -5994.752584772968
        0x40a45f8c3897e1b2L    # 2607.773869272519
        -0x3f7addaa3e4ec8f2L    # -676.2918733448912
        0x4056c540acc8ac01L    # 91.08207244488587
        -0x3fffc3d15e2bb2b0L    # -2.029385818759387
        0x3f8465384661159dL    # 0.009958686492732844
    .end array-data

    .line 72
    :array_7
    .array-data 8
        0x4003cd476b80221fL    # 2.475233878944223
        -0x4009b2c1785ec3a3L    # -1.393858461193097
        -0x4049359ad67999f5L    # -0.08902580512803852
        0x3f75337fe51910f0L    # 0.005176066960818057
    .end array-data

    .line 77
    :array_8
    .array-data 8
        0x40049224e8112f61L    # 2.571359456085631
        -0x3fe72e971a04458aL    # -6.204501718034058
        0x4012747a18fa14d5L    # 4.613747015250927
        0x3f9043a31568eeecL    # 0.01588301485229142
    .end array-data

    .line 82
    :array_9
    .array-data 8
        0x40fd89f560258d9dL    # 120991.3359733135
        -0x3ed80241009a4bdfL    # -786143.4988228121
        0x414120b70371a57bL    # 2244974.026905713
        -0x3eb3c13a33d9909eL    # -3702155.594922946
        0x414dbba45e362f7aL    # 3897160.736028609
        -0x3ebb2251a1d69030L    # -2734940.73563955
        0x4133d43c7dd07ba1L    # 1299516.491462447
        -0x3ee68a6dad9398a7L    # -417124.5804916523
        0x40f5b56eeae18c48L    # 88918.93234400556
        -0x3f383d0fdb7215acL    # -12165.87611555044
        0x408fd378a85909a8L    # 1018.433914847953
        -0x3fb740a8db232d1fL    # -49.49484692366037
        0x3fea8ef772dc5912L    # 0.8299519770978654
        -0x409a06f8475bc931L    # -0.002682223396852069
    .end array-data

    .line 92
    :array_a
    .array-data 8
        0x40d1a22f4f405f69L    # 18056.73921212499
        -0x3f075b6955e9ed2eL    # -100937.4165249572
        0x410d86ea4ac264c4L    # 241885.2865035889
        -0x3eec3be2ddd08c4dL    # -323847.2833841398
        0x4110224bf3a85331L    # 264338.9879467963
        -0x3eff97672b5c13e7L    # -134419.1038282819
        0x40e44911b3073b70L    # 41544.55310403451
        -0x3f440c3d1dc85588L    # -7155.761264304274
        0x4080b0f14e9c7ca2L    # 534.1178257203612
        0x3febae53372953d9L    # 0.8650299146053114
        0x3f9046dcb3fa2573L    # 0.01589531754010438
    .end array-data
.end method

.method public static getInstance()Lcom/amigo/animation/InterpolatorCreator;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/amigo/animation/InterpolatorCreator;->mInterpolatorCreator:Lcom/amigo/animation/InterpolatorCreator;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/amigo/animation/InterpolatorCreator;

    invoke-direct {v0}, Lcom/amigo/animation/InterpolatorCreator;-><init>()V

    sput-object v0, Lcom/amigo/animation/InterpolatorCreator;->mInterpolatorCreator:Lcom/amigo/animation/InterpolatorCreator;

    .line 17
    :cond_0
    sget-object v0, Lcom/amigo/animation/InterpolatorCreator;->mInterpolatorCreator:Lcom/amigo/animation/InterpolatorCreator;

    return-object v0
.end method


# virtual methods
.method public create(Ljava/lang/String;)Landroid/view/animation/Interpolator;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v2, p0, Lcom/amigo/animation/InterpolatorCreator;->mCoef:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 137
    .local v0, "c":[D
    invoke-virtual {p0, p1}, Lcom/amigo/animation/InterpolatorCreator;->createSampleList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 139
    .local v1, "listSample":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/animation/SampleTable;>;"
    if-nez v0, :cond_0

    .line 140
    const/4 v2, 0x0

    .line 147
    :goto_0
    return-object v2

    .line 143
    :cond_0
    if-nez v1, :cond_1

    .line 144
    new-instance v2, Lcom/amigo/animation/PolynomialInterpolator;

    invoke-direct {v2, v0}, Lcom/amigo/animation/PolynomialInterpolator;-><init>([D)V

    goto :goto_0

    .line 147
    :cond_1
    new-instance v2, Lcom/amigo/animation/PolySampleInterploator;

    new-instance v3, Lcom/amigo/animation/PolynomialInterpolator;

    invoke-direct {v3, v0}, Lcom/amigo/animation/PolynomialInterpolator;-><init>([D)V

    invoke-direct {v2, v3, v1}, Lcom/amigo/animation/PolySampleInterploator;-><init>(Lcom/amigo/animation/PolynomialInterpolator;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method createSampleList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amigo/animation/SampleTable;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0xd

    const/high16 v10, 0x3f800000    # 1.0f

    const v9, 0x3d4ccccd    # 0.05f

    const/4 v8, 0x0

    const/16 v7, 0xb

    .line 103
    const/4 v4, 0x0

    .line 104
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/animation/SampleTable;>;"
    const/4 v5, 0x0

    .line 106
    .local v5, "table":Lcom/amigo/animation/SampleTable;
    const-string v6, "C2-InOutCustom1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/animation/SampleTable;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/animation/SampleTable;>;"
    new-array v0, v7, [F

    fill-array-data v0, :array_0

    .line 111
    .local v0, "c2Sample1":[F
    new-instance v5, Lcom/amigo/animation/SampleTable;

    .end local v5    # "table":Lcom/amigo/animation/SampleTable;
    invoke-direct {v5, v8, v9, v7, v0}, Lcom/amigo/animation/SampleTable;-><init>(FFI[F)V

    .line 112
    .restart local v5    # "table":Lcom/amigo/animation/SampleTable;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-array v1, v7, [F

    fill-array-data v1, :array_1

    .line 116
    .local v1, "c2Sample2":[F
    new-instance v5, Lcom/amigo/animation/SampleTable;

    .end local v5    # "table":Lcom/amigo/animation/SampleTable;
    const v6, 0x3f733333    # 0.95f

    invoke-direct {v5, v6, v10, v7, v1}, Lcom/amigo/animation/SampleTable;-><init>(FFI[F)V

    .line 117
    .restart local v5    # "table":Lcom/amigo/animation/SampleTable;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v0    # "c2Sample1":[F
    .end local v1    # "c2Sample2":[F
    :cond_0
    :goto_0
    return-object v4

    .line 118
    :cond_1
    const-string v6, "C3-InOutCustom2"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 119
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/animation/SampleTable;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/animation/SampleTable;>;"
    new-array v2, v7, [F

    fill-array-data v2, :array_2

    .line 123
    .local v2, "c3Sample1":[F
    new-instance v5, Lcom/amigo/animation/SampleTable;

    .end local v5    # "table":Lcom/amigo/animation/SampleTable;
    invoke-direct {v5, v8, v9, v7, v2}, Lcom/amigo/animation/SampleTable;-><init>(FFI[F)V

    .line 124
    .restart local v5    # "table":Lcom/amigo/animation/SampleTable;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-array v3, v11, [F

    fill-array-data v3, :array_3

    .line 128
    .local v3, "c3Sample2":[F
    new-instance v5, Lcom/amigo/animation/SampleTable;

    .end local v5    # "table":Lcom/amigo/animation/SampleTable;
    const v6, 0x3f70a3d7    # 0.94f

    invoke-direct {v5, v6, v10, v11, v3}, Lcom/amigo/animation/SampleTable;-><init>(FFI[F)V

    .line 129
    .restart local v5    # "table":Lcom/amigo/animation/SampleTable;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :array_0
    .array-data 4
        0x0
        0x0
        0x3b03126f    # 0.002f
        0x3b03126f    # 0.002f
        0x3b03126f    # 0.002f
        0x3b83126f    # 0.004f
        0x3bc49ba6    # 0.006f
        0x3c03126f    # 0.008f
        0x3c23d70a    # 0.01f
        0x3c449ba6    # 0.012f
        0x3c656042    # 0.014f
    .end array-data

    .line 113
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 120
    :array_2
    .array-data 4
        0x0
        0x3b03126f    # 0.002f
        0x3b03126f    # 0.002f
        0x3b83126f    # 0.004f
        0x3c03126f    # 0.008f
        0x3c656042    # 0.014f
        0x3ca3d70a    # 0.02f
        0x3cd4fdf4    # 0.026f
        0x3d1374bc    # 0.036f
        0x3d3c6a7f    # 0.046f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 125
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amigo/animation/InterpolatorCreator;->mCoef:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
