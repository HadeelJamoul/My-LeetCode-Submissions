type P = Promise<number>;

async function addTwoPromises(promise1: P, promise2: P): P {
    const [value1, value2] = await Promise.all([promise1, promise2]);
    return value1 + value2;
}