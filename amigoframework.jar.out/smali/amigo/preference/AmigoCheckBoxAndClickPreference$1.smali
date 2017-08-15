.class Lamigo/preference/AmigoCheckBoxAndClickPreference$1;
.super Ljava/lang/Object;
.source "AmigoCheckBoxAndClickPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/preference/AmigoCheckBoxAndClickPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/preference/AmigoCheckBoxAndClickPreference;


# direct methods
.method constructor <init>(Lamigo/preference/AmigoCheckBoxAndClickPreference;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lamigo/preference/AmigoCheckBoxAndClickPreference$1;->this$0:Lamigo/preference/AmigoCheckBoxAndClickPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lamigo/preference/AmigoCheckBoxAndClickPreference$1;->this$0:Lamigo/preference/AmigoCheckBoxAndClickPreference;

    # getter for: Lamigo/preference/AmigoCheckBoxAndClickPreference;->mRBtnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lamigo/preference/AmigoCheckBoxAndClickPreference;->access$000(Lamigo/preference/AmigoCheckBoxAndClickPreference;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lamigo/preference/AmigoCheckBoxAndClickPreference$1;->this$0:Lamigo/preference/AmigoCheckBoxAndClickPreference;

    # getter for: Lamigo/preference/AmigoCheckBoxAndClickPreference;->mRBtnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lamigo/preference/AmigoCheckBoxAndClickPreference;->access$000(Lamigo/preference/AmigoCheckBoxAndClickPreference;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lamigo/preference/AmigoCheckBoxAndClickPreference$1;->this$0:Lamigo/preference/AmigoCheckBoxAndClickPreference;

    # getter for: Lamigo/preference/AmigoCheckBoxAndClickPreference;->mPreferenceClickListener:Lamigo/preference/AmigoCheckBoxAndClickPreference$AmigoOnPreferenceClick;
    invoke-static {v0}, Lamigo/preference/AmigoCheckBoxAndClickPreference;->access$100(Lamigo/preference/AmigoCheckBoxAndClickPreference;)Lamigo/preference/AmigoCheckBoxAndClickPreference$AmigoOnPreferenceClick;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lamigo/preference/AmigoCheckBoxAndClickPreference$1;->this$0:Lamigo/preference/AmigoCheckBoxAndClickPreference;

    # getter for: Lamigo/preference/AmigoCheckBoxAndClickPreference;->mPreferenceClickListener:Lamigo/preference/AmigoCheckBoxAndClickPreference$AmigoOnPreferenceClick;
    invoke-static {v0}, Lamigo/preference/AmigoCheckBoxAndClickPreference;->access$100(Lamigo/preference/AmigoCheckBoxAndClickPreference;)Lamigo/preference/AmigoCheckBoxAndClickPreference$AmigoOnPreferenceClick;

    move-result-object v0

    iget-object v1, p0, Lamigo/preference/AmigoCheckBoxAndClickPreference$1;->this$0:Lamigo/preference/AmigoCheckBoxAndClickPreference;

    invoke-interface {v0, v1}, Lamigo/preference/AmigoCheckBoxAndClickPreference$AmigoOnPreferenceClick;->onPreferenceClick(Lamigo/preference/AmigoPreference;)V

    goto :goto_0
.end method
