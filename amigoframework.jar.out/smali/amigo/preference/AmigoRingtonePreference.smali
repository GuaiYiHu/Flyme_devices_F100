.class public Lamigo/preference/AmigoRingtonePreference;
.super Lamigo/preference/AmigoPreference;
.source "AmigoRingtonePreference.java"

# interfaces
.implements Lamigo/preference/AmigoPreferenceManager$OnActivityResultListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RingtonePreference"


# instance fields
.field private mRequestCode:I

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/preference/AmigoRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const v0, 0x1010093

    invoke-direct {p0, p1, p2, v0}, Lamigo/preference/AmigoRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/preference/AmigoRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/preference/AmigoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    invoke-static {}, Lamigo/preference/NativePreferenceManager;->getAnalyzeNativePreferenceXml()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 45
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 46
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .line 47
    .local v2, "id":I
    packed-switch v2, :pswitch_data_0

    .line 45
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :pswitch_0
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    iput v3, p0, Lamigo/preference/AmigoRingtonePreference;->mRingtoneType:I

    goto :goto_1

    .line 52
    :pswitch_1
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lamigo/preference/AmigoRingtonePreference;->mShowDefault:Z

    goto :goto_1

    .line 55
    :pswitch_2
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lamigo/preference/AmigoRingtonePreference;->mShowSilent:Z

    goto :goto_1

    .line 61
    .end local v1    # "i":I
    .end local v2    # "id":I
    :cond_0
    sget-object v3, Lcom/amigo/internal/R$styleable;->AmigoRingtonePreference:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lamigo/preference/AmigoRingtonePreference;->mRingtoneType:I

    .line 65
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lamigo/preference/AmigoRingtonePreference;->mShowDefault:Z

    .line 66
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lamigo/preference/AmigoRingtonePreference;->mShowSilent:Z

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x10101f9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getRingtoneType()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lamigo/preference/AmigoRingtonePreference;->mRingtoneType:I

    return v0
.end method

.method public getShowDefault()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lamigo/preference/AmigoRingtonePreference;->mShowDefault:Z

    return v0
.end method

.method public getShowSilent()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lamigo/preference/AmigoRingtonePreference;->mShowSilent:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 242
    iget v1, p0, Lamigo/preference/AmigoRingtonePreference;->mRequestCode:I

    if-ne p1, v1, :cond_2

    .line 244
    if-eqz p3, :cond_0

    .line 245
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 247
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lamigo/preference/AmigoRingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoRingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 252
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x1

    .line 255
    :goto_1
    return v1

    .line 247
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 255
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onAttachedToHierarchy(Lamigo/preference/AmigoPreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Lamigo/preference/AmigoPreferenceManager;

    .prologue
    .line 234
    invoke-super {p0, p1}, Lamigo/preference/AmigoPreference;->onAttachedToHierarchy(Lamigo/preference/AmigoPreferenceManager;)V

    .line 236
    invoke-virtual {p1, p0}, Lamigo/preference/AmigoPreferenceManager;->registerOnActivityResultListener(Lamigo/preference/AmigoPreferenceManager$OnActivityResultListener;)V

    .line 237
    invoke-virtual {p1}, Lamigo/preference/AmigoPreferenceManager;->getNextRequestCode()I

    move-result v0

    iput v0, p0, Lamigo/preference/AmigoRingtonePreference;->mRequestCode:I

    .line 238
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Lamigo/preference/AmigoRingtonePreference;->getPreferenceManager()Lamigo/preference/AmigoPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lamigo/preference/AmigoPreferenceManager;->getFragment()Lamigo/preference/AmigoPreferenceFragment;

    move-result-object v1

    .line 150
    .local v1, "owningFragment":Lamigo/preference/AmigoPreferenceFragment;
    if-eqz v1, :cond_0

    .line 151
    iget v2, p0, Lamigo/preference/AmigoRingtonePreference;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Lamigo/preference/AmigoPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lamigo/preference/AmigoRingtonePreference;->getPreferenceManager()Lamigo/preference/AmigoPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lamigo/preference/AmigoPreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lamigo/preference/AmigoRingtonePreference;->mRequestCode:I

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 208
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .prologue
    .line 166
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Lamigo/preference/AmigoRingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 169
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v1, p0, Lamigo/preference/AmigoRingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    iget-boolean v0, p0, Lamigo/preference/AmigoRingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {p0}, Lamigo/preference/AmigoRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 175
    :cond_0
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v1, p0, Lamigo/preference/AmigoRingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Lamigo/preference/AmigoRingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lamigo/preference/AmigoRingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 178
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0, v1}, Lamigo/preference/AmigoRingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "uriString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 189
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoRingtonePreference;->persistString(Ljava/lang/String;)Z

    .line 190
    return-void

    .line 189
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValueObj"    # Ljava/lang/Object;

    .prologue
    .line 213
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 222
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lamigo/preference/AmigoRingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setRingtoneType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 102
    iput p1, p0, Lamigo/preference/AmigoRingtonePreference;->mRingtoneType:I

    .line 103
    return-void
.end method

.method public setShowDefault(Z)V
    .locals 0
    .param p1, "showDefault"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lamigo/preference/AmigoRingtonePreference;->mShowDefault:Z

    .line 123
    return-void
.end method

.method public setShowSilent(Z)V
    .locals 0
    .param p1, "showSilent"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lamigo/preference/AmigoRingtonePreference;->mShowSilent:Z

    .line 142
    return-void
.end method
