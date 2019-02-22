import React, { useState } from 'react';
import { useDocumentTitle } from './lib/Play.purs';
import { useStateHook } from './lib/Hooks.purs';

function App() {
  const [count, setCount] = useStateHook(0);
  useDocumentTitle(count);
  const [count2, setCount2] = useState(0);

  return (
    <div>
      <p>You clicked {count} times</p>
      <p>You Also clicked {count2} times</p>
      <button onClick={() => setCount(count + 1)}>
        Click me
      </button>
      <button onClick={() => setCount2(count2 + 1)}>
        Click me also
      </button>
    </div>
  );
}

export default App;
