.class Lamigo/preference/AmigoPreferenceActivity$2;
.super Ljava/lang/Object;
.source "AmigoPreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/preference/AmigoPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/preference/AmigoPreferenceActivity;


# direct methods
.method constructor <init>(Lamigo/preference/AmigoPreferenceActivity;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lamigo/preference/AmigoPreferenceActivity$2;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 594
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$2;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoPreferenceActivity;->setResult(I)V

    .line 595
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceActivity$2;->this$0:Lamigo/preference/AmigoPreferenceActivity;

    invoke-virtual {v0}, Lamigo/preference/AmigoPreferenceActivity;->finish()V

    .line 596
    return-void
.end method
