.class Lamigo/preference/AmigoMultiCheckPreference$1;
.super Ljava/lang/Object;
.source "AmigoMultiCheckPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/preference/AmigoMultiCheckPreference;->onPrepareDialogBuilder(Lamigo/app/AmigoAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/preference/AmigoMultiCheckPreference;


# direct methods
.method constructor <init>(Lamigo/preference/AmigoMultiCheckPreference;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lamigo/preference/AmigoMultiCheckPreference$1;->this$0:Lamigo/preference/AmigoMultiCheckPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 262
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference$1;->this$0:Lamigo/preference/AmigoMultiCheckPreference;

    # getter for: Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z
    invoke-static {v0}, Lamigo/preference/AmigoMultiCheckPreference;->access$000(Lamigo/preference/AmigoMultiCheckPreference;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 263
    return-void
.end method
