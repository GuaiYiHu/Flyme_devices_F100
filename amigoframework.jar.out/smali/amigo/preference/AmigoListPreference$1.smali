.class Lamigo/preference/AmigoListPreference$1;
.super Ljava/lang/Object;
.source "AmigoListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/preference/AmigoListPreference;->onPrepareDialogBuilder(Lamigo/app/AmigoAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/preference/AmigoListPreference;


# direct methods
.method constructor <init>(Lamigo/preference/AmigoListPreference;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lamigo/preference/AmigoListPreference$1;->this$0:Lamigo/preference/AmigoListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lamigo/preference/AmigoListPreference$1;->this$0:Lamigo/preference/AmigoListPreference;

    # setter for: Lamigo/preference/AmigoListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lamigo/preference/AmigoListPreference;->access$002(Lamigo/preference/AmigoListPreference;I)I

    .line 256
    iget-object v0, p0, Lamigo/preference/AmigoListPreference$1;->this$0:Lamigo/preference/AmigoListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lamigo/preference/AmigoListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 257
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 258
    return-void
.end method
