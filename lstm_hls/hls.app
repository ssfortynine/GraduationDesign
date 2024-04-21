<project xmlns="com.autoesl.autopilot.project" name="lstm_hls" top="LSTM_Top" projectType="C/C++">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../main.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="lstm_hls/rnn.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="lstm_hls/rnn.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="lstm_hls/rnn_top.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="lstm_hls/utils.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="lstm_hls/weight.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

