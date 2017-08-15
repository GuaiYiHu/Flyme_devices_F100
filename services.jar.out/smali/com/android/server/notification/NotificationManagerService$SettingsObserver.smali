.class Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final SWITCH_AUDIO_ENABLED:Landroid/net/Uri;

.field private final SWITCH_VIBRATION_ENABLED:Landroid/net/Uri;

.field private final VIBRATION_EFFECT_NAME:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 934
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 935
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 925
    const-string v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 928
    const-string v0, "amigo_vibration_switch"

    invoke-static {v0}, Lamigo/provider/AmigoSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->SWITCH_VIBRATION_ENABLED:Landroid/net/Uri;

    .line 929
    const-string v0, "amigo_silent_switch"

    invoke-static {v0}, Lamigo/provider/AmigoSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->SWITCH_AUDIO_ENABLED:Landroid/net/Uri;

    .line 932
    const-string v0, "vibration_effect_name"

    invoke-static {v0}, Lamigo/provider/AmigoSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->VIBRATION_EFFECT_NAME:Landroid/net/Uri;

    .line 936
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 939
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 940
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 943
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->SWITCH_VIBRATION_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 945
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->SWITCH_AUDIO_ENABLED:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 949
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->VIBRATION_EFFECT_NAME:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 952
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 953
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 956
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 957
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 960
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 961
    .local v3, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 962
    :cond_0
    const-string v6, "notification_light_pulse"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_8

    move v2, v4

    .line 964
    .local v2, "pulseEnabled":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    if-eq v6, v2, :cond_1

    .line 965
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v6, v2}, Lcom/android/server/notification/NotificationManagerService;->access$1802(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 966
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    .line 970
    .end local v2    # "pulseEnabled":Z
    :cond_1
    const/4 v1, 0x0

    .line 971
    .local v1, "mVibChanged":I
    const/4 v0, 0x0

    .line 972
    .local v0, "mAudioChanged":I
    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->SWITCH_VIBRATION_ENABLED:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 973
    :cond_2
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "amigo_vibration_switch"

    invoke-static {v6, v8, v5}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_9

    move v6, v5

    :goto_1
    # setter for: Lcom/android/server/notification/NotificationManagerService;->audioProfileVibrate:Z
    invoke-static {v7, v6}, Lcom/android/server/notification/NotificationManagerService;->access$1902(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 975
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "amigo_silent_switch"

    invoke-static {v6, v8, v5}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_a

    move v6, v4

    :goto_2
    # setter for: Lcom/android/server/notification/NotificationManagerService;->audioProfileAudio:Z
    invoke-static {v7, v6}, Lcom/android/server/notification/NotificationManagerService;->access$2002(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 977
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->SWITCH_VIBRATION_ENABLED:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 979
    or-int/lit8 v1, v1, 0x1

    .line 982
    :cond_3
    if-eqz p1, :cond_4

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->SWITCH_AUDIO_ENABLED:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 983
    :cond_4
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "amigo_silent_switch"

    invoke-static {v6, v8, v5}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_b

    move v6, v4

    :goto_3
    # setter for: Lcom/android/server/notification/NotificationManagerService;->audioProfileAudio:Z
    invoke-static {v7, v6}, Lcom/android/server/notification/NotificationManagerService;->access$2002(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 985
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "amigo_vibration_switch"

    invoke-static {v7, v8, v5}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_c

    :goto_4
    # setter for: Lcom/android/server/notification/NotificationManagerService;->audioProfileVibrate:Z
    invoke-static {v6, v5}, Lcom/android/server/notification/NotificationManagerService;->access$1902(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 987
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->SWITCH_AUDIO_ENABLED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 989
    or-int/lit8 v0, v0, 0x10

    .line 992
    :cond_5
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audioProfile Vibrate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->audioProfileVibrate:Z
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$1900(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "audioProfileAudio= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->audioProfileAudio:Z
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$2000(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mChanged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    or-int v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->audioProfileVibrate:Z
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1900(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->audioProfileAudio:Z
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$2000(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    or-int v7, v1, v0

    # invokes: Lcom/android/server/notification/NotificationManagerService;->amigoUpdateAudioProfile(ZZI)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;ZZI)V

    .line 997
    if-eqz p1, :cond_6

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->VIBRATION_EFFECT_NAME:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 998
    :cond_6
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vibration_effect_name"

    const-string v7, "NOTIFICATION_GENERAL"

    invoke-static {v5, v6, v7}, Lamigo/provider/AmigoSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mVibrationeEffectName:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$2202(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 1000
    :cond_7
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audioProfile mVibrationeEffectName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mVibrationeEffectName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$2200(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return-void

    .end local v0    # "mAudioChanged":I
    .end local v1    # "mVibChanged":I
    :cond_8
    move v2, v5

    .line 962
    goto/16 :goto_0

    .restart local v0    # "mAudioChanged":I
    .restart local v1    # "mVibChanged":I
    :cond_9
    move v6, v4

    .line 973
    goto/16 :goto_1

    :cond_a
    move v6, v5

    .line 975
    goto/16 :goto_2

    :cond_b
    move v6, v5

    .line 983
    goto/16 :goto_3

    :cond_c
    move v5, v4

    .line 985
    goto/16 :goto_4
.end method
