.class Lamigo/preference/AmigoMultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "AmigoMultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/preference/AmigoMultiSelectListPreference;->onPrepareDialogBuilder(Lamigo/app/AmigoAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/preference/AmigoMultiSelectListPreference;


# direct methods
.method constructor <init>(Lamigo/preference/AmigoMultiSelectListPreference;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lamigo/preference/AmigoMultiSelectListPreference$1;->this$0:Lamigo/preference/AmigoMultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 178
    if-eqz p3, :cond_0

    .line 179
    iget-object v0, p0, Lamigo/preference/AmigoMultiSelectListPreference$1;->this$0:Lamigo/preference/AmigoMultiSelectListPreference;

    iget-object v1, p0, Lamigo/preference/AmigoMultiSelectListPreference$1;->this$0:Lamigo/preference/AmigoMultiSelectListPreference;

    # getter for: Lamigo/preference/AmigoMultiSelectListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v1}, Lamigo/preference/AmigoMultiSelectListPreference;->access$200(Lamigo/preference/AmigoMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lamigo/preference/AmigoMultiSelectListPreference$1;->this$0:Lamigo/preference/AmigoMultiSelectListPreference;

    # getter for: Lamigo/preference/AmigoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lamigo/preference/AmigoMultiSelectListPreference;->access$100(Lamigo/preference/AmigoMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    # |= operator for: Lamigo/preference/AmigoMultiSelectListPreference;->mPreferenceChanged:Z
    invoke-static {v0, v1}, Lamigo/preference/AmigoMultiSelectListPreference;->access$076(Lamigo/preference/AmigoMultiSelectListPreference;I)Z

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoMultiSelectListPreference$1;->this$0:Lamigo/preference/AmigoMultiSelectListPreference;

    iget-object v1, p0, Lamigo/preference/AmigoMultiSelectListPreference$1;->this$0:Lamigo/preference/AmigoMultiSelectListPreference;

    # getter for: Lamigo/preference/AmigoMultiSelectListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v1}, Lamigo/preference/AmigoMultiSelectListPreference;->access$200(Lamigo/preference/AmigoMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lamigo/preference/AmigoMultiSelectListPreference$1;->this$0:Lamigo/preference/AmigoMultiSelectListPreference;

    # getter for: Lamigo/preference/AmigoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lamigo/preference/AmigoMultiSelectListPreference;->access$100(Lamigo/preference/AmigoMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    # |= operator for: Lamigo/preference/AmigoMultiSelectListPreference;->mPreferenceChanged:Z
    invoke-static {v0, v1}, Lamigo/preference/AmigoMultiSelectListPreference;->access$076(Lamigo/preference/AmigoMultiSelectListPreference;I)Z

    goto :goto_0
.end method
