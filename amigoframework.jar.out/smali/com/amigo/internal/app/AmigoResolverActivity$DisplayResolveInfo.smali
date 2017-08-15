.class final Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "AmigoResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/app/AmigoResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extendedInfo:Ljava/lang/CharSequence;

.field origIntent:Landroid/content/Intent;

.field ri:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/amigo/internal/app/AmigoResolverActivity;


# direct methods
.method constructor <init>(Lcom/amigo/internal/app/AmigoResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0
    .param p2, "pri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "pLabel"    # Ljava/lang/CharSequence;
    .param p4, "pInfo"    # Ljava/lang/CharSequence;
    .param p5, "pOrigIntent"    # Landroid/content/Intent;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->this$0:Lcom/amigo/internal/app/AmigoResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p2, p0, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 472
    iput-object p3, p0, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 473
    iput-object p4, p0, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    .line 474
    iput-object p5, p0, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    .line 475
    return-void
.end method
