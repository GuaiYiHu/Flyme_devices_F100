.class final Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AmigoResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/app/AmigoResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private final mLaunchedFromUid:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amigo/internal/app/AmigoResolverActivity;


# direct methods
.method public constructor <init>(Lcom/amigo/internal/app/AmigoResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 490
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 491
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 492
    iput-object p4, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 493
    iput-object p5, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 494
    iput p6, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 495
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 496
    invoke-direct {p0}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 497
    return-void
.end method

.method static synthetic access$100(Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;

    .prologue
    .line 751
    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 752
    .local v1, "text":Landroid/widget/TextView;
    const v3, 0x1020015

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 753
    .local v2, "text2":Landroid/widget/TextView;
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 754
    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v3, p2, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mShowExtended:Z
    invoke-static {v3}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$800(Lcom/amigo/internal/app/AmigoResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 756
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 757
    iget-object v3, p2, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    :goto_0
    iget-object v3, p2, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 762
    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    iget-object v4, p2, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v4}, Lcom/amigo/internal/app/AmigoResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p2, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 764
    :cond_0
    iget-object v3, p2, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 765
    return-void

    .line 759
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 16
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Landroid/content/pm/ResolveInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 644
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v1, p3, p2

    add-int/lit8 v12, v1, 0x1

    .line 645
    .local v12, "num":I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1

    .line 647
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;-><init>(Lcom/amigo/internal/app/AmigoResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_0
    return-void

    .line 649
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    const/4 v2, 0x1

    # setter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mShowExtended:Z
    invoke-static {v1, v2}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$802(Lcom/amigo/internal/app/AmigoResolverActivity;Z)Z

    .line 650
    const/4 v14, 0x0

    .line 651
    .local v14, "usePkg":Z
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$600(Lcom/amigo/internal/app/AmigoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 652
    .local v13, "startApp":Ljava/lang/CharSequence;
    if-nez v13, :cond_2

    .line 653
    const/4 v14, 0x1

    .line 655
    :cond_2
    if-nez v14, :cond_5

    .line 657
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 659
    .local v7, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 660
    add-int/lit8 v8, p2, 0x1

    .local v8, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v8, v0, :cond_4

    .line 661
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 662
    .local v10, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$600(Lcom/amigo/internal/app/AmigoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 663
    .local v9, "jApp":Ljava/lang/CharSequence;
    if-eqz v9, :cond_3

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 664
    :cond_3
    const/4 v14, 0x1

    .line 671
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 673
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    :cond_5
    move/from16 v11, p2

    .local v11, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v11, v0, :cond_0

    .line 674
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 675
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_7

    .line 677
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;-><init>(Lcom/amigo/internal/app/AmigoResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 667
    .end local v3    # "add":Landroid/content/pm/ResolveInfo;
    .end local v11    # "k":I
    .restart local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v8    # "j":I
    .restart local v9    # "jApp":Ljava/lang/CharSequence;
    .restart local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 660
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 681
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "k":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$600(Lcom/amigo/internal/app/AmigoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;-><init>(Lcom/amigo/internal/app/AmigoResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private rebuildList()V
    .locals 20

    .prologue
    .line 528
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    .line 553
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "N":I
    if-lez v13, :cond_10

    .line 556
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 557
    .local v11, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v16, 0x1

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v13, :cond_6

    .line 558
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 565
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget v1, v11, Landroid/content/pm/ResolveInfo;->priority:I

    iget v2, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, v11, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v2, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v1, v2, :cond_5

    .line 567
    :cond_1
    :goto_1
    move/from16 v0, v16

    if-ge v0, v13, :cond_5

    .line 568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 569
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 531
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v13    # "N":I
    .end local v16    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$600(Lcom/amigo/internal/app/AmigoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/high16 v5, 0x10000

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mAlwaysUseOption:Z
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$200(Lcom/amigo/internal/app/AmigoResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x40

    :goto_2
    or-int/2addr v1, v5

    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    .line 539
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 540
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v16, v1, -0x1

    .restart local v16    # "i":I
    :goto_3
    if-ltz v16, :cond_0

    .line 541
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v14, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 542
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v14, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v14, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, v2, v4, v5}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v15

    .line 545
    .local v15, "granted":I
    if-eqz v15, :cond_3

    .line 547
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 540
    :cond_3
    add-int/lit8 v16, v16, -0x1

    goto :goto_3

    .line 531
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v15    # "granted":I
    .end local v16    # "i":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 557
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "r0":Landroid/content/pm/ResolveInfo;
    .restart local v13    # "N":I
    .restart local v16    # "i":I
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 574
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mIsSupportAppSort:Z
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$700(Lcom/amigo/internal/app/AmigoResolverActivity;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 575
    const/4 v1, 0x1

    if-le v13, v1, :cond_7

    .line 576
    new-instance v18, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$600(Lcom/amigo/internal/app/AmigoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 578
    .local v18, "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 583
    .end local v18    # "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 586
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_b

    .line 587
    const/16 v16, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v1, v1

    move/from16 v0, v16

    if-ge v0, v1, :cond_b

    .line 588
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v6, v1, v16

    .line 589
    .local v6, "ii":Landroid/content/Intent;
    if-nez v6, :cond_8

    .line 587
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 592
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    invoke-virtual {v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    .line 594
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v14, :cond_9

    .line 595
    const-string v1, "AmigoResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 599
    :cond_9
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 600
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    iput-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 601
    instance-of v1, v6, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_a

    move-object/from16 v17, v6

    .line 602
    check-cast v17, Landroid/content/pm/LabeledIntent;

    .line 603
    .local v17, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 604
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 605
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 606
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->icon:I

    .line 608
    .end local v17    # "li":Landroid/content/pm/LabeledIntent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    invoke-virtual {v4}, Lcom/amigo/internal/app/AmigoResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;-><init>(Lcom/amigo/internal/app/AmigoResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 615
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "ii":Landroid/content/Intent;
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "r0":Landroid/content/pm/ResolveInfo;
    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 616
    .restart local v11    # "r0":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 617
    .local v9, "start":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$600(Lcom/amigo/internal/app/AmigoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 618
    .local v12, "r0Label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    const/4 v2, 0x0

    # setter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mShowExtended:Z
    invoke-static {v1, v2}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$802(Lcom/amigo/internal/app/AmigoResolverActivity;Z)Z

    .line 619
    const/16 v16, 0x1

    :goto_6
    move/from16 v0, v16

    if-ge v0, v13, :cond_f

    .line 620
    if-nez v12, :cond_c

    .line 621
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 623
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 624
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$600(Lcom/amigo/internal/app/AmigoResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 625
    .local v19, "riLabel":Ljava/lang/CharSequence;
    if-nez v19, :cond_d

    .line 626
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 628
    :cond_d
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 619
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 631
    :cond_e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    add-int/lit8 v10, v16, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 632
    move-object v11, v3

    .line 633
    move-object/from16 v12, v19

    .line 634
    move/from16 v9, v16

    goto :goto_7

    .line 637
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v19    # "riLabel":Ljava/lang/CharSequence;
    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    add-int/lit8 v10, v13, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 639
    .end local v9    # "start":I
    .end local v11    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v12    # "r0Label":Ljava/lang/CharSequence;
    .end local v13    # "N":I
    .end local v16    # "i":I
    :cond_10
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 718
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 722
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 727
    if-nez p2, :cond_1

    .line 731
    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # invokes: Lcom/amigo/internal/app/AmigoResolverActivity;->isLightTheme()Z
    invoke-static {v3}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$900(Lcom/amigo/internal/app/AmigoResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 732
    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x9030030

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 740
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 741
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 742
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mIconSize:I
    invoke-static {v3}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$1000(Lcom/amigo/internal/app/AmigoResolverActivity;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 746
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;

    invoke-direct {p0, v2, v3}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;)V

    .line 747
    return-object v2

    .line 734
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x903002f

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 744
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_1
.end method

.method public handlePackagesChanged()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 500
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    .line 501
    .local v3, "oldItemCount":I
    invoke-direct {p0}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 502
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 504
    iget-object v5, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 506
    :cond_0
    iget-object v5, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    invoke-virtual {v5}, Lcom/amigo/internal/app/AmigoResolverActivity;->finish()V

    .line 509
    :cond_1
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->getCount()I

    move-result v2

    .line 510
    .local v2, "newItemCount":I
    if-eq v2, v3, :cond_3

    .line 513
    iget-object v5, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mAlwaysUseOption:Z
    invoke-static {v5}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$200(Lcom/amigo/internal/app/AmigoResolverActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 514
    iget-object v5, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mGrid:Landroid/widget/GridView;
    invoke-static {v5}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$300(Lcom/amigo/internal/app/AmigoResolverActivity;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 515
    .local v0, "checkedPos":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    const/4 v1, 0x1

    .line 516
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_2

    if-lt v0, v2, :cond_2

    .line 517
    const-string v5, "AmigoResolverActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePackagesChanged: checkedPos "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= newItemCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", disable buttons"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v5, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mAlwaysButton:Lamigo/widget/AmigoButton;
    invoke-static {v5}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$400(Lcom/amigo/internal/app/AmigoResolverActivity;)Lamigo/widget/AmigoButton;

    move-result-object v5

    invoke-virtual {v5, v4}, Lamigo/widget/AmigoButton;->setEnabled(Z)V

    .line 519
    iget-object v5, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity;->mOnceButton:Lamigo/widget/AmigoButton;
    invoke-static {v5}, Lcom/amigo/internal/app/AmigoResolverActivity;->access$500(Lcom/amigo/internal/app/AmigoResolverActivity;)Lamigo/widget/AmigoButton;

    move-result-object v5

    invoke-virtual {v5, v4}, Lamigo/widget/AmigoButton;->setEnabled(Z)V

    .line 523
    .end local v0    # "checkedPos":I
    .end local v1    # "enabled":Z
    :cond_2
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    invoke-virtual {v4}, Lcom/amigo/internal/app/AmigoResolverActivity;->resizeGrid()V

    .line 525
    :cond_3
    return-void

    .restart local v0    # "checkedPos":I
    :cond_4
    move v1, v4

    .line 515
    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 697
    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 698
    const/4 v2, 0x0

    .line 710
    :goto_0
    return-object v2

    .line 701
    :cond_0
    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;

    .line 703
    .local v1, "dri":Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_1
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 705
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x3000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 707
    iget-object v3, v1, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 708
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 703
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 689
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 690
    const/4 v0, 0x0

    .line 693
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method
