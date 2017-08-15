.class public Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;
.super Ljava/lang/Object;
.source "AFMFunctionCallEx.java"


# static fields
.field private static final ERROR:Ljava/lang/String; = "ERROR "

.field public static final FUNCTION_EM_BASEBAND:I = 0x2711

.field public static final FUNCTION_EM_CPU_STRESS_TEST_APMCU:I = 0x9c41

.field public static final FUNCTION_EM_CPU_STRESS_TEST_BACKUP:I = 0x9c43

.field public static final FUNCTION_EM_CPU_STRESS_TEST_INIT:I = 0x9c45

.field public static final FUNCTION_EM_CPU_STRESS_TEST_SWCODEC:I = 0x9c42

.field public static final FUNCTION_EM_CPU_STRESS_TEST_THERMAL:I = 0x9c44

.field public static final FUNCTION_EM_FB0_IOCTL:I = 0x7531

.field public static final FUNCTION_EM_MSDC_GET_CURRENT:I = 0x11172

.field public static final FUNCTION_EM_MSDC_SET30_MODE:I = 0x11173

.field public static final FUNCTION_EM_MSDC_SET_CURRENT:I = 0x11171

.field public static final FUNCTION_EM_SENSOR_CLEAR_CALIBRATION:I = 0xc352

.field public static final FUNCTION_EM_SENSOR_CLEAR_GSENSOR_CALIBRATION:I = 0xc356

.field public static final FUNCTION_EM_SENSOR_CLEAR_GYROSCOPE_CALIBRATION:I = 0xc359

.field public static final FUNCTION_EM_SENSOR_DO_CALIBRATION:I = 0xc351

.field public static final FUNCTION_EM_SENSOR_DO_GSENSOR_CALIBRATION:I = 0xc354

.field public static final FUNCTION_EM_SENSOR_DO_GYROSCOPE_CALIBRATION:I = 0xc357

.field public static final FUNCTION_EM_SENSOR_GET_GSENSOR_CALIBRATION:I = 0xc355

.field public static final FUNCTION_EM_SENSOR_GET_GYROSCOPE_CALIBRATION:I = 0xc358

.field public static final FUNCTION_EM_SENSOR_SET_THRESHOLD:I = 0xc353

.field public static final FUNCTION_EM_SHELL_CMD_EXECUTION:I = 0x13881

.field public static final RESULT_CONTINUE:I = 0x1

.field public static final RESULT_FIN:I = 0x0

.field public static final RESULT_IO_ERR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "EM/functioncall"


# instance fields
.field private mSocket:Lcom/mediatek/sensor/emsvr/Client;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/sensor/emsvr/Client;

    return-void
.end method

.method private endCallFunction()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/sensor/emsvr/Client;

    invoke-virtual {v0}, Lcom/mediatek/sensor/emsvr/Client;->stopClient()V

    .line 194
    return-void
.end method


# virtual methods
.method public getNextResult()Lcom/mediatek/sensor/emsvr/FunctionReturn;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    new-instance v1, Lcom/mediatek/sensor/emsvr/FunctionReturn;

    invoke-direct {v1}, Lcom/mediatek/sensor/emsvr/FunctionReturn;-><init>()V

    .line 170
    .local v1, "ret":Lcom/mediatek/sensor/emsvr/FunctionReturn;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/sensor/emsvr/Client;

    invoke-virtual {v2}, Lcom/mediatek/sensor/emsvr/Client;->read()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/sensor/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    .line 171
    iget-object v2, v1, Lcom/mediatek/sensor/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const/4 v2, 0x0

    iput v2, v1, Lcom/mediatek/sensor/emsvr/FunctionReturn;->mReturnCode:I

    .line 173
    invoke-direct {p0}, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->endCallFunction()V

    .line 186
    :goto_0
    return-object v1

    .line 175
    :cond_0
    const/4 v2, 0x1

    iput v2, v1, Lcom/mediatek/sensor/emsvr/FunctionReturn;->mReturnCode:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/EOFException;
    invoke-direct {p0}, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->endCallFunction()V

    .line 179
    iput v3, v1, Lcom/mediatek/sensor/emsvr/FunctionReturn;->mReturnCode:I

    .line 180
    const-string v2, ""

    iput-object v2, v1, Lcom/mediatek/sensor/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    goto :goto_0

    .line 181
    .end local v0    # "e":Ljava/io/EOFException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->endCallFunction()V

    .line 183
    const/4 v2, -0x1

    iput v2, v1, Lcom/mediatek/sensor/emsvr/FunctionReturn;->mReturnCode:I

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/sensor/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    goto :goto_0
.end method

.method public startCallFunctionStringReturn(I)Z
    .locals 5
    .param p1, "functionId"    # I

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "result":Z
    new-instance v2, Lcom/mediatek/sensor/emsvr/Client;

    invoke-direct {v2}, Lcom/mediatek/sensor/emsvr/Client;-><init>()V

    iput-object v2, p0, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/sensor/emsvr/Client;

    .line 94
    iget-object v2, p0, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/sensor/emsvr/Client;

    invoke-virtual {v2}, Lcom/mediatek/sensor/emsvr/Client;->startClient()V

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/sensor/emsvr/Client;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/sensor/emsvr/Client;->writeFunctionNo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const/4 v1, 0x1

    .line 102
    :goto_0
    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "EM/functioncall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartCallFunctionStringReturnEXP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeParamInt(I)Z
    .locals 3
    .param p1, "param"    # I

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 133
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/sensor/emsvr/Client;

    invoke-virtual {v2, p1}, Lcom/mediatek/sensor/emsvr/Client;->writeParamInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    const/4 v1, 0x1

    .line 139
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeParamNo(I)Z
    .locals 3
    .param p1, "number"    # I

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/sensor/emsvr/Client;

    invoke-virtual {v2, p1}, Lcom/mediatek/sensor/emsvr/Client;->writeParamNo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v1, 0x1

    .line 120
    :goto_0
    return v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeParamString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 152
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->mSocket:Lcom/mediatek/sensor/emsvr/Client;

    invoke-virtual {v2, p1}, Lcom/mediatek/sensor/emsvr/Client;->writeParamString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    const/4 v1, 0x1

    .line 157
    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method
