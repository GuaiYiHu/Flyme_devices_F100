.class public Lcom/mediatek/sensor/EmSensor;
.super Ljava/lang/Object;
.source "EmSensor.java"


# static fields
.field public static final RET_FAILED:I = 0x0

.field public static final RET_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EmSensor"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const-string v0, "fw_sensor_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native calculatePsensorMaxValue()I
.end method

.method public static native calculatePsensorMinValue()I
.end method

.method public static clearGsensorCalibration()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    const v3, 0xc356

    new-array v4, v2, [I

    invoke-static {v3, v2, v4}, Lcom/mediatek/sensor/EmSensor;->runCmdInEmSvr(II[I)[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "ret":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static clearGyroscopeCalibration()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    const v3, 0xc359

    new-array v4, v2, [I

    invoke-static {v3, v2, v4}, Lcom/mediatek/sensor/EmSensor;->runCmdInEmSvr(II[I)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "ret":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static clearPsensorCalibration()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    const v3, 0xc352

    new-array v4, v2, [I

    invoke-static {v3, v2, v4}, Lcom/mediatek/sensor/EmSensor;->runCmdInEmSvr(II[I)[Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "ret":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static doGsensorCalibration(I)I
    .locals 5
    .param p0, "tolerance"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 51
    const v3, 0xc354

    new-array v4, v1, [I

    aput p0, v4, v2

    invoke-static {v3, v1, v4}, Lcom/mediatek/sensor/EmSensor;->runCmdInEmSvr(II[I)[Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "ret":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static doGyroscopeCalibration(I)I
    .locals 5
    .param p0, "tolerance"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    const v3, 0xc357

    new-array v4, v1, [I

    aput p0, v4, v2

    invoke-static {v3, v1, v4}, Lcom/mediatek/sensor/EmSensor;->runCmdInEmSvr(II[I)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "ret":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static doPsensorCalibration(II)I
    .locals 6
    .param p0, "min"    # I
    .param p1, "max"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    const v3, 0xc351

    new-array v4, v5, [I

    aput p0, v4, v2

    aput p1, v4, v1

    invoke-static {v3, v5, v4}, Lcom/mediatek/sensor/EmSensor;->runCmdInEmSvr(II[I)[Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "ret":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static getGsensorCalibration([F)I
    .locals 6
    .param p0, "result"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 61
    const v4, 0xc355

    new-array v5, v3, [I

    invoke-static {v4, v3, v5}, Lcom/mediatek/sensor/EmSensor;->runCmdInEmSvr(II[I)[Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "ret":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, p0, v4

    .line 66
    const/4 v4, 0x1

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, p0, v4

    .line 67
    const/4 v4, 0x2

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, p0, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return v2

    .line 69
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move v2, v3

    .line 70
    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    move v2, v3

    .line 73
    goto :goto_0
.end method

.method public static getGyroscopeCalibration([F)I
    .locals 6
    .param p0, "result"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 96
    const v4, 0xc358

    new-array v5, v3, [I

    invoke-static {v4, v3, v5}, Lcom/mediatek/sensor/EmSensor;->runCmdInEmSvr(II[I)[Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "ret":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, p0, v4

    .line 101
    const/4 v4, 0x1

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, p0, v4

    .line 102
    const/4 v4, 0x2

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, p0, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return v2

    .line 104
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move v2, v3

    .line 105
    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    move v2, v3

    .line 108
    goto :goto_0
.end method

.method public static native getPsensorData()I
.end method

.method public static native getPsensorMaxValue()I
.end method

.method public static native getPsensorMinValue()I
.end method

.method public static native getPsensorThreshold([I)I
.end method

.method public static varargs runCmdInEmSvr(II[I)[Ljava/lang/String;
    .locals 10
    .param p0, "index"    # I
    .param p1, "paramNum"    # I
    .param p2, "param"    # [I

    .prologue
    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;

    invoke-direct {v2}, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;-><init>()V

    .line 164
    .local v2, "functionCall":Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;
    invoke-virtual {v2, p0}, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->startCallFunctionStringReturn(I)Z

    move-result v7

    .line 165
    .local v7, "result":Z
    invoke-virtual {v2, p1}, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->writeParamNo(I)Z

    .line 166
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget v3, v0, v4

    .line 167
    .local v3, "i":I
    invoke-virtual {v2, v3}, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->writeParamInt(I)Z

    .line 166
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    .end local v3    # "i":I
    :cond_0
    if-eqz v7, :cond_4

    .line 172
    :cond_1
    invoke-virtual {v2}, Lcom/mediatek/sensor/emsvr/AFMFunctionCallEx;->getNextResult()Lcom/mediatek/sensor/emsvr/FunctionReturn;

    move-result-object v6

    .line 173
    .local v6, "r":Lcom/mediatek/sensor/emsvr/FunctionReturn;
    iget-object v8, v6, Lcom/mediatek/sensor/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 178
    :goto_1
    iget v8, v6, Lcom/mediatek/sensor/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 179
    const-string v8, "EmSensor"

    const-string v9, "AFMFunctionCallEx: RESULT_IO_ERR"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 181
    const-string v8, "ERROR"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v6    # "r":Lcom/mediatek/sensor/emsvr/FunctionReturn;
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    return-object v8

    .line 176
    .restart local v6    # "r":Lcom/mediatek/sensor/emsvr/FunctionReturn;
    :cond_3
    iget-object v8, v6, Lcom/mediatek/sensor/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget v8, v6, Lcom/mediatek/sensor/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    goto :goto_1

    .line 184
    .end local v6    # "r":Lcom/mediatek/sensor/emsvr/FunctionReturn;
    :cond_4
    const-string v8, "EmSensor"

    const-string v9, "AFMFunctionCallEx return false"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 186
    const-string v8, "ERROR"

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static setPsensorThreshold(II)I
    .locals 6
    .param p0, "high"    # I
    .param p1, "low"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    const v3, 0xc353

    new-array v4, v5, [I

    aput p0, v4, v2

    aput p1, v4, v1

    invoke-static {v3, v5, v4}, Lcom/mediatek/sensor/EmSensor;->runCmdInEmSvr(II[I)[Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "ret":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
