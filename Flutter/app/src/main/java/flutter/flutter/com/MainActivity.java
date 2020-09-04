package flutter.flutter.com;

import androidx.appcompat.app.AppCompatActivity;
import io.flutter.embedding.android.FlutterFragment;

import android.os.Bundle;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        FlutterFragment flutterFragment = FlutterFragment.withNewEngine()
                .initialRoute("")
                .build();
        getSupportFragmentManager()
                .beginTransaction()
                .add(R.id.fl_container, flutterFragment)
                .commit();
    }
}
