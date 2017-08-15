.class Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;
.super Ljava/lang/Object;
.source "AmigoMagicBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoMagicBar$MenuListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Holder"
.end annotation


# instance fields
.field public checkBox:Landroid/widget/CheckBox;

.field public textView:Landroid/widget/TextView;

.field final synthetic this$1:Lamigo/widget/AmigoMagicBar$MenuListAdapter;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoMagicBar$MenuListAdapter;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lamigo/widget/AmigoMagicBar$MenuListAdapter$Holder;->this$1:Lamigo/widget/AmigoMagicBar$MenuListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
