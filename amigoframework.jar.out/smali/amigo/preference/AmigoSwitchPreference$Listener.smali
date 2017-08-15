.class Lamigo/preference/AmigoSwitchPreference$Listener;
.super Ljava/lang/Object;
.source "AmigoSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/preference/AmigoSwitchPreference;


# direct methods
.method private constructor <init>(Lamigo/preference/AmigoSwitchPreference;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lamigo/preference/AmigoSwitchPreference$Listener;->this$0:Lamigo/preference/AmigoSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lamigo/preference/AmigoSwitchPreference;Lamigo/preference/AmigoSwitchPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lamigo/preference/AmigoSwitchPreference;
    .param p2, "x1"    # Lamigo/preference/AmigoSwitchPreference$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lamigo/preference/AmigoSwitchPreference$Listener;-><init>(Lamigo/preference/AmigoSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 34
    iget-object v0, p0, Lamigo/preference/AmigoSwitchPreference$Listener;->this$0:Lamigo/preference/AmigoSwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamigo/preference/AmigoSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 42
    :goto_1
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lamigo/preference/AmigoSwitchPreference$Listener;->this$0:Lamigo/preference/AmigoSwitchPreference;

    invoke-virtual {v0, p2}, Lamigo/preference/AmigoSwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method
